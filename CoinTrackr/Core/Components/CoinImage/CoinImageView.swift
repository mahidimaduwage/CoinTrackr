//
//  CoinImageView.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-02.
//

import SwiftUI


// A view responsible for displaying a coin image based on a given CoinModel.
struct CoinImageView: View {
    
    // ViewModel that handles image fetching logic for a specific coin
    @StateObject var vm: CoinImageViewModel
    
    // Custom initializer that injects the CoinModel into the ViewModel
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = vm.image { // If image is successfully loaded, display it
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading { // If the image is still loading, show a loading spinner
                ProgressView()
            } else {
                Image(systemName: "questionmark") // If image fails to load, display a placeholder icon
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

struct CoinImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoinImageView(coin: dev.coin)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
