//
//  RSSFeedModel.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/1/23.
//

import Foundation

class RssFeedModel: ObservableObject {
    @Published var items: [RssFeedItem] = []
    
    func load(rssUrl: String) {
        let parser = RssFeedParser()
        parser.parseFeed(url: rssUrl) { (items) in
            DispatchQueue.main.async {
                self.items = items
            }
        }
    }
}
