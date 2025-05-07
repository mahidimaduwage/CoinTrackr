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
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().tintColor = UIColor(Color.theme.accent)
        UITableView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationView {
                    HomeView()
                        .navigationBarHidden(true)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(vm)
            }
        }
    }
}
