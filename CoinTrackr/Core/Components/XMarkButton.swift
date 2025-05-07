//
//  XMarkButton.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-06.
//

import SwiftUI

// A reusable "X" (close) button that dismisses the current view when tapped.
struct XMarkButton: View {
    
    // Access the presentation mode environment to allow dismissing the view
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss() // Dismiss the current view
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

#Preview {
    XMarkButton()
}
