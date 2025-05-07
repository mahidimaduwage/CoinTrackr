//
//  HapticManager.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-06.
//

import Foundation
import SwiftUI

// Used to enhance user experience during key interactions like saving, errors, or updates.
class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
