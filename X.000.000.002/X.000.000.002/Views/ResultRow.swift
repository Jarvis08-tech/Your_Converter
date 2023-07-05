//
//  ResultRow.swift
//  X.000.000.002
//
//  Created by Develop on 22.03.22.
//

import SwiftUI

struct ResultRow: View {
    let unitType: UnitType
    let SIValue: Double
    @Binding var calculation: RegularCalculation
    @Binding var inputValue: String
    
    
    var body: some View {
        HStack {
            Text(unwrapDouble(SIValue / unitType.factor))
            Spacer()
            Text(unitType.name)
            Text(" [" + unitType.unit + "]")
        }
    }
}

struct ResultRow_Previews: PreviewProvider {
    static var previews: some View {
        ResultRow(unitType: UnitType(name: "m", unit: "m", factor: 1.0, category: .length), SIValue: 1.0, calculation: .constant(RegularCalculation(catergory: .length)), inputValue: .constant(""))
    }
}
