//
//  RegularCalculation.swift
//  X.000.000.002
//
//  Created by Develop on 21.03.22.
//

import Foundation

struct RegularCalculation {
    let factors = FactorsUnitType()
    let category: Categories
    var SIValue: Double = 0
    let usedFactors: [UnitType]
    var actualInputFactor: UnitType = UnitType(name: "There is something Wrong", unit: "also here", factor: 1.0,  category: .length)
    let categoryName: String
    
    init(catergory: Categories) {
        self.category = catergory
        
        var usedFactors: [UnitType] = []
        for i in factors.list {
            if category == i.category {
                usedFactors.append(i)
                if i.factor == 1 {
                    self.actualInputFactor = i
                }
                    
            }
        }
        self.usedFactors = usedFactors
        let categoryType = CategoryType(category: catergory)
        self.categoryName = categoryType.name
    }
    
    mutating func set(newValue: String, type: UnitType) {
        for i in usedFactors {
            if type.name == i.name {
                SIValue = unwrapString(newValue) * i.factor
                break
            }
        }
        
    }
    
    mutating func setNewactualInputFactor(_ unitType: UnitType) {
        actualInputFactor = unitType
    }
    
    
}
