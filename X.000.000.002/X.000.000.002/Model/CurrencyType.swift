//
//  CurrencyType.swift
//  X.000.000.002
//
//  Created by Develop on 27.03.22.
//

import Foundation
import SwiftUI

struct CurrencyType: Identifiable {
    let id: UUID
    let name: String
    let factor: Double
    
    init(id: UUID = UUID(), name: String, factor: Double) {
        self.id = id
        self.name = name
        self.factor = factor
        
        
    }
}
