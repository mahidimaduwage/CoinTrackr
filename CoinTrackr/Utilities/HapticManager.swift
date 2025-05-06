//
//  HapticManager.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-06.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
