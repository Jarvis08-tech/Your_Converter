//
//  CategoriesCategoryType.swift
//  X.000.000.002
//
//  Created by Develop on 22.03.22.
//

import Foundation

struct CategoriesCategoryType {
    let list: [CategoryType]
    
    init() {
        var list: [CategoryType] = []
        for i in Categories.allCases {
            list.append(CategoryType(category: i))
        }
        self.list = list
    }
}
