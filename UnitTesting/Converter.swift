//
//  Converter.swift
//  UnitTesting
//
//  Created by Oskar Larsson on 2022-11-02.
//

import Foundation

class Converter {
    
   private let usdRate = 0.99
    
    func convertUSD(euro: String) -> String {
        let euroDouble = Double(euro) ?? 0
        
        if euroDouble <= 0 {
            return "you need to enter a positive number!"
        }
        
        if euroDouble >= 1000000 {
            return "You have entered to high a number"
        }
        
        let convertedUSD = euroDouble * usdRate
        
        return "$\(convertedUSD)"
    }
    
}
