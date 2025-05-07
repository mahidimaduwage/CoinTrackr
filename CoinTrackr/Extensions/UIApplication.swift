//
//  UIApplication.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-04.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    // Ends editing mode by resigning the first responder (e.g., hides keyboard).
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
