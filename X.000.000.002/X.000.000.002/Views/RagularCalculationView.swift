//
//  RagularCalculationView.swift
//  X.000.000.002
//
//  Created by Joel Mueller on 10.11.22.
//

import SwiftUI

struct RagularCalculationView: View {
    @State var calculation: RegularCalculation
    @State var inputValue = ""
    @State var makeInput = false
    
    var tryInputValue: Bool {
        if unwrapString(inputValue) > 0.0 {
            return false
        }
        return true
    }
    
    var body: some View {
        List {
            ForEach(calculation.usedFactors) { value in
                Button( action: {
                    calculation.actualInputFactor = value
                    inputValue = String(unwrapDouble(calculation.SIValue / value.factor))
                    if stringIs0(inputValue) { inputValue = "" }
                    makeInput = true
                }){
                    ResultRow(unitType: value, SIValue: calculation.SIValue, calculation: $calculation, inputValue: $inputValue)
                }
                
            }
        }
        .navigationTitle(calculation.categoryName)
        .sheet(isPresented: $makeInput) {
            NavigationView {
                MakeInput(value: $inputValue, name: calculation.actualInputFactor.name + " [" + calculation.actualInputFactor.unit + "]")
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                inputValue = ""
                                makeInput = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                calculation.set(newValue: inputValue, type: calculation.actualInputFactor)
                                inputValue = ""
                                makeInput = false
                            }
                            .disabled(tryInputValue)
                        }
                    }
            }
        }
    }
}

struct RagularCalculationView_Previews: PreviewProvider {
    static var previews: some View {
        RagularCalculationView(calculation: RegularCalculation(catergory: .length))
    }
}
