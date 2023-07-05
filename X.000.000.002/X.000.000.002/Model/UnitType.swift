//
//  UnitType.swift
//  X.000.000.002
//
//  Created by Develop on 21.03.22.
//

import Foundation
import SwiftUI

struct UnitType: Identifiable {
    let id: UUID
    let name: String
    let unit: String
    let factor: Double
    let category: Categories
    
    init(id: UUID = UUID(), name: String, unit: String, factor: Double, category: Categories) {
        self.id = id
        self.name = name
        self.unit = unit
        self.factor = factor
        self.category = category
        
        
    }
}
