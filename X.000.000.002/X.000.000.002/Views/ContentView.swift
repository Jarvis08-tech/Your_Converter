//
//  ContentView.swift
//  X.000.000.002
//
//  Created by Develop on 27.03.21.
//

import SwiftUI

struct ContentView: View {
    let categories = CategoriesCategoryType()
    
    var body: some View {
        List{
            NavigationLink {
                CurrencyCalculationView()
            } label: {
                CategoryCurrencyRow()
            }
            ForEach(categories.list) { value in
                NavigationLink {
                    RagularCalculationView(calculation: RegularCalculation(catergory: value.category))
                } label: {
                    CategoryRow(category: value.category)
                }
            }
            NavigationLink {
                TemperatureCalculationView()
            } label: {
                CategoryTempratureRow()
            }
        }
        .navigationTitle("Your Converter")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

