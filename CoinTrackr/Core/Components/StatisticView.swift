//
//  StatisticView.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-05.
//

import SwiftUI

// A view that displays a single statistic, such as market cap, volume, or price change.
struct StatisticView: View {
    
    let stat: StatisticModel    // Statistic data passed into the view
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            
            // Statistic title (e.g., "Market Cap")
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            
            // Main value (e.g., "$1.2B")
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            
            // Optional percentage change indicator
            HStack(spacing: 4) {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect( // Rotate icon for negative values
                        Angle(degrees:(stat.percentageChange ?? 0) >= 0 ? 0 : 180))
                
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            // Color and visibility based on change
            .foregroundColor((stat.percentageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatisticView(stat: dev.stat1)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            StatisticView(stat: dev.stat2)
                .previewLayout(.sizeThatFits)
            StatisticView(stat: dev.stat3)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
