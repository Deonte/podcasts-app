//
//  ContentView.swift
//  podcasts-app
//
//  Created by Deonte Kilgore on 1/23/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationView {
                FavoritesView()
            }
            .tabItem {
                Label("Favorites",
                      systemImage: "star.fill")
            }
            
            NavigationView {
                SearchView()
            }
            .tabItem {
                Label("Search",
                      systemImage: "magnifyingglass")
            }
            
            NavigationView {
                DownloadView()
            }
            .tabItem {
                Label("Downloads",
                      systemImage: "arrow.down.circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
