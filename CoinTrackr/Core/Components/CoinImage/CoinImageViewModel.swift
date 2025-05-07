//
//  CoinImageViewModel.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-03.
//

import Foundation
import SwiftUI
import Combine

// ViewModel responsible for fetching and providing coin images to the UI.
class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    // Initializer that sets up the data service and begins observing for image updates
    init(coin: CoinModel) {
        self.coin = coin
        self.dataService = CoinImageService(coin: coin)
        self.addSubscribers()
        self.isLoading = true
    }
    
    // Subscribes to the image publisher from the data service.
    // Updates `image` when a new value is emitted, and sets `isLoading` to false.
    private func addSubscribers() {
        dataService.$image
            .sink { [weak self] (_) in
                self?.isLoading = false
            } receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancellables)
    }
}
