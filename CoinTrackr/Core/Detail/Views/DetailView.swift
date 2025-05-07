//
//  DetailView.swift
//  CoinTrackr
//
//  Created by Shaumya on 2025-05-07.
//

import SwiftUI

struct DetailLoadingView: View {
    
    @Binding var coin: CoinModel?

    var body: some View {
        ZStack {
            if let coin = coin {
                DetailView(coin: coin)
            }
        }
    }
    
}

struct DetailView: View {
    
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        print("initializing detail view for\(coin.name)")
    }
    
    var body: some View {
        Text(coin.name)
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(coin: dev.coin)
        }
    }
}

