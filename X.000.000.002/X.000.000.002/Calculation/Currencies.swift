//
//  Currencies.swift
//  X.000.000.002
//
//  Created by Develop on 10.04.21.
//

import Foundation

struct Currencies {
    let rates: [String: Double]
    let lastupdate: Date
    var eur: Double

    init(eur: Double) {
        let currencies = GetCurrencies()
        rates = currencies.rates
        lastupdate = currencies.lastupdate
        self.eur = eur
    }
    
    mutating func set(newValue: String, rate: String) {
        eur = unwrapString(newValue) / rates[rate]!
    }
    
    func get(rate: String) -> String {
        return unwrapDouble(eur * rates[rate]!)
    }
    
}
