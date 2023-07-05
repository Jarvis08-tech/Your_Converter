//
//  CurrencyRow.swift
//  X.000.000.002
//
//  Created by Develop on 27.03.22.
//

import SwiftUI

struct CurrencyRow: View {
    let currencyType: CurrencyType
    let SIValue: Double
    @Binding var calculation: CurrencyCalculation
    @Binding var inputValue: String
    
    var body: some View {
        HStack {
            Text(unwrapDouble(SIValue * currencyType.factor))
            Spacer()
            Text(currencyType.name)
            Image(currencyType.name)
                .resizable()
                .frame(width: 35, height: 20)
                .cornerRadius(4)
        }
    }
}

struct CurrencyRow_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyRow(currencyType: CurrencyType(name: "HLh", factor: 2.0), SIValue: 1.0, calculation: .constant(CurrencyCalculation()), inputValue: .constant(""))
    }
}
