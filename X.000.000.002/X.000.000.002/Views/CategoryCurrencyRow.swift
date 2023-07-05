//
//  CategoryCurrencyRow.swift
//  X.000.000.002
//
//  Created by Develop on 27.03.22.
//

import SwiftUI

struct CategoryCurrencyRow: View {
    var body: some View {
        HStack {
            Image("Currencies")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text("   Currencies")
                .font(.title)
                .bold()
        }
        .padding()
    }
}

struct CategoryCurrencyRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCurrencyRow()
    }
}
