//
//  SettingsView.swift
//  CryptoWallet
//
//  Created by Dev Asheesh Chopra on 08/01/23.
//

import SwiftUI

struct InformationView: View {
    
    let google = URL(string: "https://www.google.com")!
    let github = URL(string: "https://www.github.com/DEV-D-GR8")
    let insta = URL(string: "https://www.instagram.com/dev_asheesh_chopra")
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color.theme.background
                    .ignoresSafeArea()
                
                
                List {
                    hindustaniDeveloperSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Information")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}

extension InformationView {
    
    private var hindustaniDeveloperSection: some View {
        Section(header: Text("Hindustani Developers")) {
            VStack(alignment: .leading) {
                Text("This app is made by my solo team Hindustani Developers for the HackNITR 4.0. I learnt many new things while building the app. I reffered to tutorials from Paul Hudson, Nick Sarnao, and the Apple Documentation for resolving doubts. This app uses MVVM Architecture, Combine, and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app is developed by  Dev Asheesh Chopra of Hindustani Developers. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            
            Link("Github", destination: github ?? google)
            Link("Instagram", destination: insta ?? google)
            
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: google)
            Link("Privacy Policy", destination: google)
            Link("Company Website", destination: google)
            Link("Learn More", destination: google)
        }
    }
    
    
}
