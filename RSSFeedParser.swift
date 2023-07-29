//
//  RSSFeedParser.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/1/23.
//

import Foundation

class RssFeedParser: NSObject, XMLParserDelegate {
    private var rssItems: [RssFeedItem] = []
    private var currentElement = ""
    private var currentTitle = "" { didSet { currentTitle = currentTitle.trimmingCharacters(in: .whitespacesAndNewlines) } }
    private var currentDescription = "" { didSet { currentDescription = currentDescription.trimmingCharacters(in: .whitespacesAndNewlines) } }
    private var currentLink = "" { didSet { currentLink = currentLink.trimmingCharacters(in: .whitespacesAndNewlines) } }
    private var pubDate = "" { didSet { pubDate = pubDate.trimmingCharacters(in: .whitespacesAndNewlines) } }
    private var audioUrl: URL?
    private var parserCompletionHandler: (([RssFeedItem]) -> Void)?

    // Add a DateFormatter to parse the pubDate string into a Date object
    private lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "E, d MMM yyyy HH:mm:ss Z"
        return formatter
    }()

    func parseFeed(url: String, completionHandler: (([RssFeedItem]) -> Void)?) {
        self.parserCompletionHandler = completionHandler
        let request = URLRequest(url: URL(string: url)!)
        let urlSession = URLSession.shared
        let task = urlSession.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                if let error = error {
                    print(error.localizedDescription)
                }
                return
            }
            /// parse our xml data
            let parser = XMLParser(data: data)
            parser.delegate = self
            parser.parse()
        }
        task.resume()
    }

    // MARK: - XML Parser Delegates
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        currentElement = elementName
        if currentElement == "item" {
            currentTitle = ""
            currentDescription = ""
            currentLink = ""
            pubDate = ""
            audioUrl = nil
        } else if currentElement == "enclosure" {
            if let urlString = attributeDict["url"], let url = URL(string: urlString) {
                audioUrl = url
            }
        }
    }

    func parser(_ parser: XMLParser, foundCharacters string: String) {
        switch currentElement {
        case "title": currentTitle += string
        case "description": currentDescription += string
        case "link": currentLink += string
        case "pubDate": pubDate += string
        default: break
        }
    }

    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "item" {
            // Parse the pubDate string into a Date object
            if let date = dateFormatter.date(from: pubDate) {
                let rssItem = RssFeedItem(id: currentTitle, title: currentTitle, description: currentDescription, link: currentLink, school: "Default School", pubDate: date, audioUrl: audioUrl)
                self.rssItems.append(rssItem)
            }
        }
    }

    func parserDidEndDocument(_ parser: XMLParser) {
        parserCompletionHandler?(rssItems)
    }

    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print(parseError.localizedDescription)
    }
}

func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
    print("Parse Error: \(parseError)") // print parsing errors
}
