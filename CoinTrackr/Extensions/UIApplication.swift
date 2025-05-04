//
//  UIApplication.swift
//  CoinTrackr
//
//  Created by Mahidi Maduwage on 2025-05-04.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
