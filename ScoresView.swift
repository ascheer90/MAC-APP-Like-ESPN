//
//  ScoreView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/6/23.
//

// ScoresView.swift

import SwiftUI

struct ScoresView: View {
    @StateObject private var viewModel = ScoresViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.scores) { score in
                VStack(alignment: .leading) {
                    Text("\(score.title)")
                        .font(.headline)
                    ForEach(score.competitors) { competitor in
                        Text("\(competitor.displayName ?? "Team") - \(competitor.score ?? "N/A")")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Scores")
        }
        .onAppear {
            viewModel.fetchScores()
        }
    }
}

struct ScoresView_Previews: PreviewProvider {
    static var previews: some View {
        ScoresView()
    }
}

import Foundation

class ScoresViewModel: ObservableObject {
    @Published var scores: [Score] = []
    
    func fetchScores() {
        guard let url = URL(string: "https://site.api.espn.com/apis/site/v2/sports/football/college-football/scoreboard") else {
            print("Invalid URL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601
                    let response = try decoder.decode(ESPNResponse.self, from: data)
                    let scores = response.events.map { event in
                        Score(title: event.date, competitors: event.competitions.flatMap { $0.competitors })
                    }
                    DispatchQueue.main.async {
                        self.scores = scores
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }
        task.resume()
    }
}

struct Score: Identifiable {
    let id = UUID()
    let title: String
    let competitors: [Competitor]
}

struct Competitor: Codable, Identifiable { // Added Identifiable here
    let id = UUID() // Added id property
    let displayName: String?
    let score: String?
}

struct ESPNResponse: Codable {
    let events: [Event]
}

struct Event: Codable {
    let date: String
    let competitions: [Competition]
}

struct Competition: Codable {
    let competitors: [Competitor]
}
