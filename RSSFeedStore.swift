//
//  RSSFeedStore.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/8/23.
//

import Foundation
import SwiftUI
import Combine

class RssFeedStore: ObservableObject {
    @Published var items: [RssFeedItem] = []
    
    func fetch(from url: String) {
        let parser = RssFeedParser()
        parser.parseFeed(url: url) { (items) in
            DispatchQueue.main.async {
                self.items = items
            }
        }
    }
}
