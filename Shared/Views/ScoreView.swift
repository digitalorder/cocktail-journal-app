//
//  ScoreView.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 01.03.21.
//

import SwiftUI

struct ScoreView: View {
    let score: Int
    
    func scoreToImage(score: Int) -> Image {
        if score <= 0 {
            return Image(systemName: "questionmark.circle")
        } else if score <= 3 {
            return Image(systemName: "\(score).circle")
        } else {
            return Image(systemName: "3.circle")
        }
    }

    var body: some View {
        scoreToImage(score: score)
            .font(.title2).foregroundColor(.gray)
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach((-1...4), id: \.self) { score in
            ScoreView(score: score)
        }
        .previewLayout(.fixed(width: 50, height: 50))
    }
}
