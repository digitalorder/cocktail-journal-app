//
//  CocktailDetail.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import SwiftUI

struct CocktailDetail: View {
    var cocktail: Cocktail
    
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
                    Text(cocktail.ingredients)
                }
                .padding([.top, .leading, .bottom])
                Text("Instructions").font(.title2)
                Text(cocktail.instructions)
                    .padding(.vertical)
            }
            .padding()
        }
        .navigationTitle(cocktail.name)
    }
}

struct CocktailDetail_Previews: PreviewProvider {
    static var previews: some View {
        CocktailDetail(cocktail: cocktails[1])
    }
}
