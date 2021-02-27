//
//  CocktailList.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import SwiftUI

struct CocktailList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredCocktails: [Cocktail] {
        modelData.cocktails.filter { cocktail in
            (!showFavoritesOnly || cocktail.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredCocktails) { cocktail in
                    NavigationLink(destination: CocktailDetail(cocktail: cocktail)) {
                        CocktailRow(cocktail: cocktail)
                    }
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
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
