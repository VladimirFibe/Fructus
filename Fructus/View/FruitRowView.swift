//
//  FruitRowView.swift
//  FruitRowView
//
//  Created by Владимир on 29.08.2021.
//

import SwiftUI

struct FruitRowView: View {
  // MARK: - PROPERTIES
  let fruit: Fruit
  // MARK: - BODY
  var body: some View {
    HStack {
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .frame(width: 80, height: 80)
        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(8)
      
      VStack(alignment: .leading, spacing: 5.0) {
        Text(fruit.title)
          .font(.title2)
          .fontWeight(.bold)
        Text(fruit.headline)
          .font(.caption)
          .foregroundColor(.secondary)
      }
    } // HStack
  }
}
// MARK: - PREVIEW
struct FruitRowView_Previews: PreviewProvider {
  static var previews: some View {
    FruitRowView(fruit: fruitsData[0])
  }
}
