//
//  ContentView.swift
//  Fructus
//
//  Created by Владимир on 29.08.2021.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  var fruits = fruitsData
  // MARK: - BODY
  var body: some View {
    NavigationView {
      List {
        ForEach(fruits) { fruit in
          FruitRowView(fruit: fruit)
        } // ForEach
      } // List
      .navigationTitle("Fruits")
    } // Navigation
  }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
