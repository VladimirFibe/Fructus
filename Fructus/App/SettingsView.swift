//
//  SettingsView.swift
//  SettingsView
//
//  Created by Владимир on 30.08.2021.
//

import SwiftUI

struct SettingsView: View {
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("isOnboarding") var isOnboarding = false
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20.0) {
          // MARK: SECTION 1
          GroupBox(label: SettingsLabelView(text: "Fructus", icon: "info.circle")) {
            Divider().padding(.vertical, 4)
            HStack(spacing: 10.0) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essantial nutrients, including potassium, dietary fiber, vitamins, and much more.")
                .font(.footnote)
            }
          }
          // MARK: SECTION 2
          GroupBox(label: SettingsLabelView(text: "Customization", icon: "paintbrush")) {
            Divider().padding(.vertical, 4)
            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
              .font(.footnote)
              .multilineTextAlignment(.leading)
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
            
            Toggle(isOn: $isOnboarding) {
              Text(isOnboarding ? "RESTARTED" : "RESTART")
                .fontWeight(.bold)
                .foregroundColor(isOnboarding ? .green : .secondary)
            }
            .padding()
            .background(
              RoundedRectangle(cornerRadius: 8, style: .continuous).fill(Color(.tertiarySystemBackground))
            )
          }
          // MARK: SECTION 3
          GroupBox(label: SettingsLabelView(text: "Application", icon: "apps.iphone")) {
            SettingsRowView(name: "Developer", content: "John / Jane")
            SettingsRowView(name: "Designer", content: "Rober Petras")
            SettingsRowView(name: "Compatibility", content: "iOS 14")
            SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
            SettingsRowView(name: "Twiter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
            SettingsRowView(name: "SwiftUI", content: "2.0")
            SettingsRowView(name: "Version", content: "1.1.0")
          }
        } // VStack
        .padding(.horizontal)
      } // Scroll
      .navigationTitle("Settings")
      .toolbar {
        dismissButton
      }
    } // Navigation
  }
  var dismissButton: some View {
    Button {
      presentationMode.wrappedValue.dismiss()
    } label: {
      Image(systemName: "xmark")
    }

  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
