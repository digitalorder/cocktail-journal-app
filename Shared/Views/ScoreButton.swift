//
//  ScoreButton.swift
//  cocktail-db-ui
//
//  Created by Denis Vasilkovskii on 27.02.21.
//

import SwiftUI

struct ScoreButton: View {
    @Binding var score: Int

    var body: some View {
        HStack {
            ForEach((1...3), id: \.self) { number in
                Button(action: {
                    if score == number {
                        score = 0
                    } else {
                        score = number
                    }
                }) {
                    Image(systemName: score >= number ? "star.circle.fill" : "star.circle")
                        .foregroundColor(score >= number ? .red : .gray).font(.title2)
                }
            }
        }
    }
}

struct ScoreButton_Previews: PreviewProvider {
    static var previews: some View {
        ForEach((0...5), id: \.self) { score in
            ScoreButton(score: .constant(score))
        }
        .previewLayout(.fixed(width: 300, height: 50))
    }
}
