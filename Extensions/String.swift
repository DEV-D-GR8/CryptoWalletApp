//
//  String.swift
//  CryptoWallet
//
//  Created by Dev Asheesh Chopra on 07/01/23.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
