//
//  CircleButtonAnimationView.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-04-25.
//

import SwiftUI

// A reusable view that provides an animated circular stroke effect.
struct CircleButtonAnimationView: View {
    
    // Binding variable to control the animation state from the parent view
    @Binding var animate : Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(.easeOut(duration: 1.0), value: animate)
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
        .foregroundStyle(.red)
        .frame(width: 100, height: 100)
}
