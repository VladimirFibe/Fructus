//
//  FruitDetailView.swift
//  FruitDetailView
//
//  Created by Владимир on 30.08.2021.
//

import SwiftUI

struct FruitDetailView: View {
  // MARK: - PROPERTIES
  var fruit: Fruit
  // MARK: - BODY
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(spacing: 20.0) {
        // Header
        FruitHeaderView(fruit: fruit)
        
        VStack(alignment: .leading, spacing: 20.0) {
          // Title
          Text(fruit.title)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(fruit.gradientColors[1])
          // Headline
          Text(fruit.headline)
            .font(.headline)
            .multilineTextAlignment(.leading)
          // Nutrients
          FruitNutrientsView(fruit: fruit)
          // Subheadline
          Text("Learn more about \(fruit.title)".uppercased())
            .fontWeight(.bold)
            .foregroundColor(fruit.gradientColors[1])
          // Description
          Text(fruit.description)
            .multilineTextAlignment(.leading)
          // Link
          SourceLinkView(fruit: fruit)
            .padding(.bottom, 40)
        } // VStack
        .padding(.horizontal, 20)
        .frame(maxWidth: 640)
      } // VStack
    } // Scrollview
    .navigationTitle(fruit.title)
    .navigationBarTitleDisplayMode(.inline)
    .edgesIgnoringSafeArea(.top)
  }
}

// MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
  static var previews: some View {
    FruitDetailView(fruit: fruitsData[0])
  }
}
