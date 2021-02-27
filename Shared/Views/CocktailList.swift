//
//  CocktailList.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import SwiftUI

struct CocktailList: View {
    var body: some View {
        NavigationView {
            List(cocktails) { cocktail in
                NavigationLink(destination: CocktailDetail(cocktail: cocktail)) {
                    CocktailRow(cocktail: cocktail)
                }
            }
            .navigationTitle("Cocktails")
        }
    }
}

struct CocktailList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            CocktailList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
