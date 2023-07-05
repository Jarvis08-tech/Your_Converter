//
//  TemperatureCalculationView.swift
//  X.000.000.002
//
//  Created by Joel Mueller on 10.11.22.
//

import SwiftUI

struct TemperatureCalculationView: View {
    @State var calculation = Temperature()
    @State var inputValue = ""
    @State var makeCelsiusInput = false
    @State var makeKelvinInput = false
    @State var makeFarenheitInput = false
    
    var body: some View {
        List {
            Button( action: {
                inputValue = calculation.get(.C)
                if stringIs0(inputValue) { inputValue = "" }
                makeCelsiusInput = true
            }){
                TemperatureRow(unitType: .C, value: calculation.get(.C), calculation: $calculation, inputValue: $inputValue)
            }
            Button( action: {
                inputValue = calculation.get(.K)
                if stringIs0(inputValue) { inputValue = "" }
                makeKelvinInput = true
            }){
                TemperatureRow(unitType: .K, value: calculation.get(.K), calculation: $calculation, inputValue: $inputValue)
            }
            Button( action: {
                inputValue = calculation.get(.F)
                if stringIs0(inputValue) { inputValue = "" }
                makeFarenheitInput = true
            }){
                TemperatureRow(unitType: .F, value: calculation.get(.F), calculation: $calculation, inputValue: $inputValue)
            }
            
        }
        .navigationTitle("Temperature")
        .sheet(isPresented: $makeCelsiusInput) {
            NavigationView {
                MakeInput(value: $inputValue, name: "Celsius [°C]", temperature: true)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                inputValue = ""
                                makeCelsiusInput = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                calculation.set(newValue: inputValue, unit: .C)
                                inputValue = ""
                                makeCelsiusInput = false
                            }
                        }
                    }
            }
        }
        .sheet(isPresented: $makeKelvinInput) {
            NavigationView {
                MakeInput(value: $inputValue, name: "Kelvin [°K]", temperature: true)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                inputValue = ""
                                makeKelvinInput = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                calculation.set(newValue: inputValue, unit: .K)
                                inputValue = ""
                                makeKelvinInput = false
                            }
                        }
                    }
            }
        }
        .sheet(isPresented: $makeFarenheitInput) {
            NavigationView {
                MakeInput(value: $inputValue, name: "Farenheit [°F]", temperature: true)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                inputValue = ""
                                makeFarenheitInput = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                calculation.set(newValue: inputValue, unit: .F)
                                inputValue = ""
                                makeFarenheitInput = false
                            }
                        }
                    }
            }
        }
        
        
    }
}

struct TemperatureCalculationView_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureCalculationView()
    }
}
