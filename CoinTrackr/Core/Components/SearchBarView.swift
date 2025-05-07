//
//  SearchBarView.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-04.
//

import SwiftUI

// A reusable search bar component that binds to a search text state.
struct SearchBarView: View {
    
    // Two-way binding to external search text value
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            // Search icon on the left
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ?
                    Color.theme.secondaryText : Color.theme.accent
                )
            
            // Input field for search query
            TextField("Search by name or symbol...", text: $searchText)
                .foregroundColor(Color.theme.accent)
                .disableAutocorrection(true)
                .overlay(
                    Image(systemName: "xmark.circle.fill") // 'X' icon to clear the search text
                        .padding()
                        .offset(x: 10)
                        .foregroundColor(Color.theme.accent)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25) // Rounded background with slight shadow
                .fill(Color.theme.background)
                .shadow(
                    color: Color.theme.accent.opacity(0.15),
                    radius: 10, x: 0, y: 0)
        )
        .padding()
    }
}

//#Preview(traits: .sizeThatFitsLayout) {
//    SearchBarView(searchText: .constant(""))
//}
