//
//  ContentView.swift
//  Simplist
//
//  Created by Tinh Nguyen on 15/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            AnimalsNearYouView()
                .tabItem {
                    Label("Near you", systemImage: "location")
                }
            
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
    }
}

#Preview {
    ContentView()
}
