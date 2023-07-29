//
//  RSSFeedItem.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/1/23.
//

import Foundation

struct RssFeedItem: Identifiable {
    var id: String?
    var title: String
    var description: String
    var link: String
    var school: String // You need to add this line
    var pubDate: Date
    var audioUrl: URL?
}
