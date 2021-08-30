//
//  FruitCardView.swift
//  FruitCardView
//
//  Created by Владимир on 29.08.2021.
//

import SwiftUI

struct FruitCardView: View {
  // MARK: - PROPERTIES
  var fruit: Fruit
  @State private var isAnimating = false
  // MARK: - BODY
  var body: some View {
    ZStack {
      VStack(spacing: 20.0) {
        // Fruit: Image
        Image(fruit.image)
          .resizable()
          .scaledToFit()
          .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
          .scaleEffect(isAnimating ? 1 : 0.6)
        // Fruit: Title
        Text(fruit.title)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .foregroundColor(.white)
          .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
        // Fruit: Headline
        Text(fruit.headline)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
          .padding(.horizontal, 16)
          .frame(maxWidth: 480)
        // Button: Start
        StartButtonView()
          .padding(.bottom, 50)
      } // VStack
    } // ZStack
    .onAppear(perform: {
      withAnimation(.easeOut(duration: 0.5)) {
        isAnimating = true
      }
    })
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
    .cornerRadius(20)
    .padding(.horizontal, 20)
  }
}
// MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
  static var previews: some View {
    FruitCardView(fruit: fruitsData[1])
      .previewLayout(.fixed(width: 320, height: 640))
  }
}
