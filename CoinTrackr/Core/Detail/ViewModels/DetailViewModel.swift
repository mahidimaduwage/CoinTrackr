//
//  DetailViewModel.swift
//  CoinTrackr
//
//  Created by Shaumya on 2025-05-07.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetails) in
                print("Recieved Coin Details Data")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
        
    }
}

