//
//  CategoryTempratureRow.swift
//  X.000.000.002
//
//  Created by Develop on 27.03.22.
//

import SwiftUI

struct CategoryTempratureRow: View {
    var body: some View {
        HStack {
            Image("Temperature")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text("   Temperature")
                .font(.title)
                .bold()
        }
        .padding()
    }
}

struct CategoryTempratureRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTempratureRow()
    }
}
