//
//  ViewModel.swift
//  UnitTesting
//
//  Created by Oskar Larsson on 2022-11-02.
//

import Foundation

final class ViewModel: ObservableObject {
    
    @Published var convertedValue = ""
    @Published var fromEuro = ""
    @Published var errorMessage = ""

    
    private let converter = Converter()
    
    func convertToUSD() {
        
        let result = converter.convertUSD(euro: fromEuro)
        
        if result == "you need to enter a positive number!" || result == "You have entered to high a number" {
            errorMessage = result
            convertedValue = ""
            return
        }
        
        convertedValue = result
        errorMessage = ""
        return
    }
    
    
    
}
