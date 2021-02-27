//
//  CocktailRow.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import SwiftUI

struct CocktailRow: View {
    var cocktail: Cocktail

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(cocktail.name)
                Text(cocktail.description).font(.subheadline).foregroundColor(.secondary)
            }
            Spacer()
            if cocktail.isFavorite {
                Image(systemName: "heart.fill").foregroundColor(.red)
            }
        }
    }
}

struct CocktailRow_Previews: PreviewProvider {
    static var cocktails = ModelData().cocktails

    static var previews: some View {
        Group {
            CocktailRow(cocktail: cocktails[0])
            CocktailRow(cocktail: cocktails[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
