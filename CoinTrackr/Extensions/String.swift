//
//  String.swift
//  CoinTrackr
//
//  Created by Shaumya on 2025-05-05.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
