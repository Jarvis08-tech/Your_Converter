//
//  CategoryType.swift
//  X.000.000.002
//
//  Created by Develop on 22.03.22.
//

import Foundation

import Foundation
import SwiftUI

struct CategoryType: Identifiable {
    let id: UUID
    let category: Categories
    let name: String
    
    init(id: UUID = UUID(), category: Categories) {
        self.id = id
        self.category = category
        switch category {
        case .length:
            self.name = "Length"
        case .mass:
            self.name = "Mass"
        case .volume:
            self.name = "Volume"
        case .speed:
            self.name = "Speed"
        case .time:
            self.name = "Time"
        case .area:
            self.name = "Area"
        case .energy:
            self.name = "Energy"
        case .pressure:
            self.name = "Pressure"
        }
    }
}
