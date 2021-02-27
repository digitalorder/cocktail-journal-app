//
//  CocktailDetail.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import SwiftUI

struct CocktailDetail: View {
    @EnvironmentObject var modelData: ModelData
    var cocktail: Cocktail

    var cocktailIndex: Int {
        modelData.cocktails.firstIndex(where: { $0.id == cocktail.id })!
    }

    var body: some View {
        ScrollView {
            VStack(alignment:.leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(cocktail.name)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.primary)
                        Text(cocktail.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    FavoriteButton(isSet: $modelData.cocktails[cocktailIndex].isFavorite)
                }
                Divider()
                HStack {
                    Text("Glassware").font(.title2)
                    Spacer()
                    Text(cocktail.glassware)
                        .padding(.vertical)
                }
                Text("Ingredients").font(.title2)
                VStack(alignment: .leading) {
                    ForEach(cocktail.ingredients, id: \.self) { ingredient in
                        Text("• \(ingredient.value) \(ingredient.unit) \(ingredient.name)")
                    }
                }
                .padding([.top, .leading, .bottom])
                Text("Instructions").font(.title2)
                Text(cocktail.instructions)
                    .padding(.vertical)
            }
            .padding()
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CocktailDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        CocktailDetail(cocktail: ModelData().cocktails[1])
            .environmentObject(modelData)
    }
}
