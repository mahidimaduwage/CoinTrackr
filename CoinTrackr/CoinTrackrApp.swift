//
//  CoinTrackrApp.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-04-24.
//

import SwiftUI

@main
struct CoinTrackrApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
