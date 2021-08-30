//
//  SettingsLabelView.swift
//  SettingsLabelView
//
//  Created by Владимир on 30.08.2021.
//

import SwiftUI

struct SettingsLabelView: View {
  // MARK: - PROPERTIES
  let text: String
  let icon: String
  // MARK: - BODY
  var body: some View {
    HStack {
      Text(text.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: icon)
    }
  }
}
// MAKR: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsLabelView(text: "Fructus", icon: "info.circle")
  }
}
