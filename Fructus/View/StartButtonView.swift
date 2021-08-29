//
//  StartButtonView.swift
//  StartButtonView
//
//  Created by Владимир on 29.08.2021.
//

import SwiftUI

struct StartButtonView: View {
  // MARK: - PROPERTIES
  @AppStorage("isOnboarding") var isOnboarding: Bool?
  // MARK: - BODY
  var body: some View {
    Button(action: {
      isOnboarding = false
    }) {
      HStack(spacing: 8.0) {
        Text("Start")
        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      }
      .padding(EdgeInsets(top: 10, leading: 16, bottom: 10, trailing: 16))
      .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    }
    .accentColor(.white)
  }
}
// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
  static var previews: some View {
    StartButtonView()
      .preferredColorScheme(.dark)
  }
}
