//
//  TemperatureRow.swift
//  X.000.000.002
//
//  Created by Develop on 27.03.22.
//

import SwiftUI

struct TemperatureRow: View {
    let unitType: TemperatureUnits
    let value: String
    @Binding var calculation: Temperature
    @Binding var inputValue: String
    
    var body: some View {
        HStack {
            Text(value)
            Spacer()
            switch unitType {
            case .K:
                Text("Kelvin")
            case .C:
                Text("Celsius")
            case .F:
                Text("Farenheit")
            }
            switch unitType {
            case .K:
                Text(" [°K]")
            case .C:
                Text(" [°C]")
            case .F:
                Text(" [°F]")
            }
        }
    }
}

struct TemperatureRow_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureRow(unitType: .C, value: "Haaalo", calculation: .constant(Temperature()), inputValue: .constant(""))
    }
}
