//
//  MakeInput.swift
//  X.000.000.002
//
//  Created by Joel Mueller on 09.11.22.
//

import SwiftUI

struct MakeInput: View {
    enum Field: Hashable {
        case active
        case passive
    }
    @Binding var value: String
    @FocusState private var focusedField: Field?
    @State var showRegularKeybaord = false
    let name: String
    var temperature = false
    var currency = false
    
    var body: some View {
        List {
            if temperature {
                TextField("0", text: $value)
                    .keyboardType(.numbersAndPunctuation)
                    .frame(maxWidth: 200)
                    .focused($focusedField, equals: .active)
            } else if currency {
                TextField("0", text: $value)
                    .keyboardType(.decimalPad)
                    .frame(maxWidth: 200)
                    .focused($focusedField, equals: .active)
            } else {
                if showRegularKeybaord {
                    TextField("0", text: $value)
                        .keyboardType(.numbersAndPunctuation)
                        .frame(maxWidth: 200)
                        .focused($focusedField, equals: .active)
                } else {
                    TextField("0", text: $value)
                        .keyboardType(.decimalPad)
                        .frame(maxWidth: 200)
                        .focused($focusedField, equals: .active)
                }
                Toggle("Enhanced keyboard", isOn: $showRegularKeybaord)
            }
            Button( action: {
                value = ""
            }){
                Text("Clear Textfield")
            }
        }.navigationTitle(name)
        .onAppear(perform: {
            focusedField = Field.active
        })
        .interactiveDismissDisabled()
    }
}

struct MakeInput_Previews: PreviewProvider {
    static var previews: some View {
        MakeInput(value: .constant(""), name: "Price")
    }
}
