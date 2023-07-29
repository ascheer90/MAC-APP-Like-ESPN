//
//  PodcastView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/7/23.
//
import SwiftUI

struct PodcastView: View {
    @StateObject private var viewModel = PodcastViewModel()
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                TextField("Search...", text: $searchText)
                    .padding(7)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding([.leading, .trailing], 10)

                List {
                    ForEach(viewModel.rssItems) { item in
                        PodcastRowView(item: item)
                    }
                }
            }
            .navigationTitle("Podcasts")
        }
        .onAppear {
            if viewModel.rssItems.isEmpty {
                viewModel.fetchRssFeed()
            }
        }
    }
}

struct PodcastRowView: View {
    let item: RssFeedItem

    var body: some View {
        if let url = item.audioUrl {
            NavigationLink(destination: PodcastPlayerView(podcastURL: url, podcastTitle: item.title).environmentObject(PlayerManager())) {
                HStack {
                    Image("CSC_Podcast_Cover") // Replace with your actual image name
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50) // Adjust size to fit next to the title
                    Text(item.title)
                        .font(.headline)
                }
                .padding(.vertical)
            }
        }
    }
}

class PodcastViewModel: ObservableObject {
    @Published var rssItems: [RssFeedItem] = []
    let rssUrl = "https://anchor.fm/s/55c4d470/podcast/rss"

    func fetchRssFeed() {
        guard rssItems.isEmpty else { return }
        
        let parser = RssFeedParser()
        parser.parseFeed(url: rssUrl) { (items) in
            print("Fetched items: \(items)") // print the fetched items
            DispatchQueue.main.async {
                self.rssItems.append(contentsOf: items)
            }
        }
    }
}
