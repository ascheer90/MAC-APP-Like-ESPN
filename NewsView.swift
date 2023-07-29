//
//  Homeview.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/6/23.
//

import SwiftUI
import WebKit

struct WebViewWrapper: UIViewRepresentable {

    let urlString: String

    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.urlString) else {
            return WKWebView()
        }

        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) { }

}

class NewsViewModel: ObservableObject {

    @Published var rssItems: [RssFeedItem] = []

    let rssUrls = [
        ("https://gozips.com/rss?path=general", "Akron"),
        ("https://ballstatesports.com/rss.aspx?path=general", "Ball_State"),
        ("https://bgsufalcons.com/rss?path=general", "Bowling_Green"),
        ("https://ubbulls.com/rss.aspx?path=general", "Buffalo"),
        ("https://cmuchippewas.com/rss.aspx?path=general", "Central_Michigan"),
        ("https://emueagles.com/rss.aspx?path=gen", "Eastern_Michigan"),
        ("https://kentstatesports.com/rss.aspx?path=general", "Kent_State"),
        ("https://miamiredhawks.com/rss.aspx?path=general", "Miami_OH"),
        ("https://niuhuskies.com/rss.aspx?path=general", "Northern_Illinois"),
        ("https://ohiobobcats.com/rss.aspx?path=general", "Ohio"),
        ("https://utrockets.com/rss.aspx?path=general", "Toledo"),
        ("https://wmubroncos.com/rss.aspx?path=general", "Western_Michigan")
    ]

    func fetchRssFeed() {
        let group = DispatchGroup()

        for rssUrl in rssUrls {
            group.enter()

            let urlString = rssUrl.0
            let schoolName = rssUrl.1

            let parser = RssFeedParser()

            parser.parseFeed(url: urlString) { (items) in
                DispatchQueue.main.async {
                    let newItems = items.map { item in
                        var item = item
                        item.school = schoolName
                        return item
                    }

                    self.rssItems.append(contentsOf: newItems)

                    group.leave()
                }
            }
        }

        group.notify(queue: .main) {
            // Merge all items into one array and sort it by publication date (newest first)
            self.rssItems = self.rssItems.sorted(by: { $0.pubDate > $1.pubDate })
        }
    }
}

struct NewsView: View {

    @StateObject private var viewModel = NewsViewModel()

    var body: some View {

        NavigationView {

            List {

                ForEach(viewModel.rssItems, id: \.id) { item in

                    NavigationLink(destination: WebViewWrapper(urlString: item.link)) {

                        HStack {
                            Image(item.school)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)

                            Text(item.title)
                                .font(.headline)
                        }

                    }

                }

            }
            .navigationTitle("News")
            .onAppear {
                viewModel.fetchRssFeed()
            }

        }

    }

}
