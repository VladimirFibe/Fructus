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
  @State private var isShowingSettings = false
  // MARK: - BODY
  var body: some View {
    NavigationView {
      List {
        ForEach(fruits) { fruit in
          NavigationLink(destination: FruitDetailView(fruit: fruit)) {
            FruitRowView(fruit: fruit)
          }
        } // ForEach
      } // List
      .listStyle(.plain)
      .navigationTitle("Fruits")
      .toolbar { settingsButton}
    } // Navigation
    .navigationViewStyle(.stack)
    .sheet(isPresented: $isShowingSettings) {
      SettingsView()
    }
  }
  var settingsButton: some View {
    Button {
      isShowingSettings.toggle()
    } label: {
      Image(systemName: "slider.horizontal.3")
    }
  }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.dark)
  }
}
