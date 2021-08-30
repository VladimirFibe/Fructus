//
//  FruitNutrientsView.swift
//  FruitNutrientsView
//
//  Created by Владимир on 30.08.2021.
//

import SwiftUI

struct FruitNutrientsView: View {
  // MARK: - PROPERTIES
  var fruit = fruitsData[1]
  let nutriens = ["Energe", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
  // MARK: - BODY
  var body: some View {
    GroupBox {
      DisclosureGroup("Nutritional value per 100g") {
        ForEach(nutriens.indices, id: \.self) { index in
          Divider().padding(.vertical, 2)
          HStack(alignment: .top) {
            Group {
              Image(systemName: "info.circle")
              Text(nutriens[index])
            }
            .font(.body.bold())
            .foregroundColor(fruit.gradientColors[1])
            Spacer(minLength: 25)
            Text(fruit.nutrition[index])
              .multilineTextAlignment(.trailing)
          }
        }
      }
    }
  }
}
// MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
  static var previews: some View {
    FruitNutrientsView()
      .preferredColorScheme(.dark)
  }
}
