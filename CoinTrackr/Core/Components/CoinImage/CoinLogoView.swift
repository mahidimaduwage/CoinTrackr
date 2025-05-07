//
//  CoinLogoView.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-06.
//

import SwiftUI

// A compact view to display a coin's logo, symbol, and name.
struct CoinLogoView: View {
    
    let coin: CoinModel
    
    var body: some View {
        VStack {
            // Coin logo image (loaded asynchronously via CoinImageView)
            CoinImageView(coin: coin)
                .frame(width: 50, height: 50)
            
            // Coin symbol (e.g., BTC, ETH) in uppercase
            Text(coin.symbol.uppercased())
                .font(.headline)
                .foregroundColor(Color.theme.accent)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            // Coin full name (e.g., Bitcoin, Ethereum)
            Text(coin.name)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
        }
    }
}

struct CoinLogoView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            CoinLogoView(coin: dev.coin)
                .previewLayout(.sizeThatFits)

            CoinLogoView(coin: dev.coin)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
