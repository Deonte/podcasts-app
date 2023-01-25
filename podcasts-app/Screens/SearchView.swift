//
//  SearchView.swift
//  podcasts-app
//
//  Created by Deonte Kilgore on 1/24/23.
//

import SwiftUI

struct Podcast {
    var name: String
    var artistName: String
}

struct SearchView: View {
    let podcasts: [Podcast] = [
        Podcast(name: "Dave Ramsey Podcast",
                artistName: "Dave Ramsey & Friends"),
        Podcast(name: "Joe Rogan Podcast",
                artistName: "Joe Rogan")
    ]
    
    @State private var searchText = ""
    
    var searchResults: [Podcast] {
        if searchText.isEmpty {
            return podcasts
        } else {
            return podcasts.filter { $0.name.contains(searchText) }
        }
    }
    
    var body: some View {
        List {
            ForEach(searchResults, id: \.name) { podcast in
                HStackLayout(alignment: .top) {
                    PlaceholderImage()
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(podcast.name)
                            .font(.headline)
                            .bold()
                            .padding(.top)
                        
                        Text(podcast.artistName)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .searchable(text: $searchText)
        .listStyle(.plain)
        .navigationTitle("Search")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SearchView()
        }
    }
}
