//
//  SourceLinkView.swift
//  SourceLinkView
//
//  Created by Владимир on 30.08.2021.
//

import SwiftUI

struct SourceLinkView: View {
  // MARK: - PROPERTIES
  var fruit: Fruit
  // MARK: - BODY
  var body: some View {
    GroupBox {
      HStack {
        Text("Content source")
        Spacer()
        Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/\(fruit.title)")!)
        Image(systemName: "arrow.right.square")
      }
      .font(.footnote)
    }
  }
}
// MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
  static var previews: some View {
    SourceLinkView(fruit: fruitsData[0])
  }
}
