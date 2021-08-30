//
//  SettingsRowView.swift
//  SettingsRowView
//
//  Created by Владимир on 31.08.2021.
//

import SwiftUI

struct SettingsRowView: View {
  // MARK: - PROPERTIES
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  // MARK: - BODY
  var body: some View {
    VStack {
      Divider().padding(.vertical, 4)
      HStack {
        Text(name).foregroundColor(.gray)
        Spacer()
        if let content = content {
          Text(content)
        } else if let label = linkLabel, let link = linkDestination {
          Link(label, destination: URL(string: "https://\(link)")!)
          Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
        }
      }
    }
  }
}

struct SettingsRowView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      SettingsRowView(name: "Developer", content: "John / Jane")
      SettingsRowView(name: "Developer", linkLabel: "MacService", linkDestination: "macservice.kz")
    }
  }
}
