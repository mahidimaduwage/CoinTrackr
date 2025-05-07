//
//  CoinDataService.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-01.
//

import Foundation
import Combine

// Responsible for fetching and publishing a list of all cryptocurrencies using the CoinGecko API.
class CoinDataService {
    
    // Publishes the full list of coins to any subscriber
    @Published var allCoins: [CoinModel] = []
    
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoins()
    }
    
    // Downloads coin market data from the CoinGecko API
    func getCoins() {
        
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24h") else { return }

        // Start network request and decode the response into [CoinModel]
        coinSubscription = NetworkingManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main) // Deliver updates on main thread (for UI)
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
    }
}
