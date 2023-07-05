//
//  Temperature.swift
//  X.000.000.002
//
//  Created by Develop on 13.04.21.
//

import Foundation

struct Temperature {
    var initK: Double = 0
    
    func get(_ unit: TemperatureUnits) -> String {
        switch unit {
        case .K:
            return unwrapDouble(initK)
        case .C:
            return unwrapDouble(initK - 273.15)
        case .F:
            return unwrapDouble(initK * (9 / 5) - 459.67)
        }
    }
    
    mutating func set(newValue: String, unit: TemperatureUnits) {
        switch unit {
        case .K:
            initK = unwrapString(newValue)
        case .C:
            initK = unwrapString(newValue) + 273.15
        case .F:
            initK = (unwrapString(newValue) + 459.67) * (5 / 9)
        }
    }
    
}

