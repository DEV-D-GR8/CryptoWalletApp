//
//  UIApplication.swift
//  CryptoWallet
//
//  Created by Dev Asheesh Chopra on 04/01/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
