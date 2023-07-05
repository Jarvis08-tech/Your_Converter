//
//  CurrencyCalculation.swift
//  X.000.000.002
//
//  Created by Develop on 27.03.22.
//

import Foundation

struct CurrencyCalculation {
    let factors = GetCurrencies()
    var SIValue: Double = 0
    let usedFactors: [CurrencyType]
    var actualInputFactor: CurrencyType = CurrencyType(name: "There is something Wrong", factor: 1.0)
    let lastUodate: String
    
    init() {
        
        var usedFactors: [CurrencyType] = []
        for i in factors.list {
            usedFactors.append(i)
            if i.factor == 1 {
                self.actualInputFactor = i
            }
        }
        self.usedFactors = usedFactors
        self.lastUodate = factors.lastupdateString
    }
    
    mutating func set(newValue: String, type: CurrencyType) {
        for i in usedFactors {
            if type.name == i.name {
                SIValue = unwrapString(newValue) / i.factor
                break
            }
        }
        
    }
    
    mutating func setNewactualInputFactor(_ currencyType: CurrencyType) {
        actualInputFactor = currencyType
    }
    

}
