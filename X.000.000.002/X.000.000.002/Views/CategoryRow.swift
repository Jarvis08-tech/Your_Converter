//
//  CategoryRow.swift
//  X.000.000.002
//
//  Created by Develop on 22.03.22.
//

import SwiftUI

struct CategoryRow: View {
    let type: CategoryType
    
    init(category: Categories) {
        self.type = CategoryType(category: category)
    }
    
    var body: some View {
        HStack {
            Image(type.name)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text("   " + type.name)
                .font(.title)
                .bold()
        }
        .padding()
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(category: .length)
    }
}
