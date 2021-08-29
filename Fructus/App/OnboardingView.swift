//
//  OnboardingView.swift
//  OnboardingView
//
//  Created by Владимир on 29.08.2021.
//

import SwiftUI

struct OnboardingView: View {
  // MARK: - PROPERTIES
  var fruits = fruitsData
  // MARK: - BODY
  var body: some View {
    TabView {
      ForEach(fruits[0...5]) { fruit in
        FruitCardView(fruit: fruit)
      } // ForEach
    } // TabView
    .tabViewStyle(.page)
    .padding(.vertical, 20)
  }
}
// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
