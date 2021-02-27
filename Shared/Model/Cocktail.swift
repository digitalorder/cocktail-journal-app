//
//  Cocktail.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import Foundation

struct Cocktail: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var glassware: String
    var ingredients: String
    var instructions: String
}
