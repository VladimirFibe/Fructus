//
//  FruitHeaderView.swift
//  FruitHeaderView
//
//  Created by Владимир on 30.08.2021.
//

import SwiftUI

struct FruitHeaderView: View {
  // MARK: - PROPERTIES
  var fruit: Fruit
  @State private var isAnimatingImage = false
  // MARK: - BODY
  var body: some View {
    ZStack {
      LinearGradient(colors: fruit.gradientColors,
                     startPoint: .topLeading,
                     endPoint: .bottomTrailing)
      Image(fruit.image)
        .resizable()
        .scaledToFit()
        .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
        .padding(.vertical, 20)
        .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
    } // ZStack
    .frame(height: 440)
    .onAppear {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimatingImage = true
      }
    }
  }
}
// MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    FruitHeaderView(fruit: fruitsData[0])
  }
}
