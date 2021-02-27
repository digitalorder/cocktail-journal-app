//
//  FavoriteButton.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "heart.fill" : "heart")
                .foregroundColor(isSet ? Color.red : Color.gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
