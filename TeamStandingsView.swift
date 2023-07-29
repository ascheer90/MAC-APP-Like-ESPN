//
//  TeamStandingsView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/9/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}
struct StandingsResponse: Codable {
    let groups: [Group]
}

struct Group: Codable {
    let name: String
    let standings: [Standing]
}

struct Standing: Codable {
    let team: TeamInfo
    let stats: [String: Stat]
}

struct TeamInfo: Codable {
    let name: String
}

struct Stat: Codable {
    let gamesPlayed: Int
    let wins: Int
    let losses: Int
    let ties: Int
    let winPercentage: Double
    let pointsFor: Int
    let pointsAgainst: Int
    let pointsDifferential: Int
}

struct SportTeam: Identifiable {
    var id = UUID()
    let sport: String
    let gender: String
    let urlString: String?
    let icon: String // SF Symbols icon name for the sport
    
    var displayName: String {
        return "\(gender) \(sport)"
    }
}

let sportTeams = [
    SportTeam(sport: "Baseball", gender: "Men's", urlString: "https://getsomemaction.com/standings.aspx?path=baseball", icon: "figure.baseball"),
    SportTeam(sport: "Basketball", gender: "Men's", urlString: "https://getsomemaction.com/standings.aspx?path=mbball", icon: "figure.basketball"),
    SportTeam(sport: "Basketball", gender: "Women's", urlString: "https://getsomemaction.com/standings.aspx?path=wbball", icon: "figure.basketball"),
    SportTeam(sport: "Field hockey", gender: "Women's", urlString: "https://getsomemaction.com/standings.aspx?path=fhockey", icon: "figure.hockey"),
    SportTeam(sport: "Football", gender: "Men's", urlString: "https://site.api.espn.com/apis/site/v2/sports/football/college-football/standings?group=15", icon: "figure.american.football"),
    SportTeam(sport: "Gymnastics", gender: "Women's", urlString: "https://getsomemaction.com/standings.aspx?path=gym", icon: "figure.gymnastics"),
    SportTeam(sport: "Lacrosse", gender: "Women's", urlString: "https://getsomemaction.com/standings.aspx?path=wlax", icon: "figure.lacrosse"),
    SportTeam(sport: "Soccer", gender: "Men's", urlString: "https://getsomemaction.com/standings.aspx?path=msoc", icon: "figure.soccer"),
    SportTeam(sport: "Soccer", gender: "Women's", urlString: "https://getsomemaction.com/standings.aspx?path=wsoc", icon: "figure.soccer"),
    SportTeam(sport: "Softball", gender: "Women's", urlString: "https://getsomemaction.com/standings.aspx?path=softball", icon: "figure.softball"),
    SportTeam(sport: "Tennis", gender: "Men's", urlString: "https://getsomemaction.com/standings.aspx?path=mten", icon: "figure.tennis"),
    SportTeam(sport: "Tennis", gender: "Women's", urlString: "https://getsomemaction.com/standings.aspx?path=wten", icon: "figure.tennis"),
    SportTeam(sport: "Volleyball", gender: "Women's", urlString: "https://getsomemaction.com/standings.aspx?path=wvball", icon: "figure.volleyball"),
    SportTeam(sport: "Wrestling", gender: "Men's", urlString: "https://getsomemaction.com/standings.aspx?path=wrestling", icon: "figure.wrestling"),
]

struct TeamStandingsView: View {
    var columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(sportTeams) { sportTeam in
                        NavigationLink(destination: SportStandingsView(sportTeam: sportTeam)) {
                            VStack {
                                Image(systemName: sportTeam.icon)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 60)
                                    .padding()
                                Text(sportTeam.displayName)
                                HStack {
                                    Text(sportTeam.gender)
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                        .scaleEffect(0.8)
                                }
                            }
                            .frame(maxWidth: .infinity, minHeight: 100, alignment: .center)
                            .padding()
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Team Standings")
        }
    }
}

struct SportStandingsView: View {
    let sportTeam: SportTeam
    @State private var standings: [Standing] = []
    
    var body: some View {
        if standings.isEmpty {
            Text("Loading...")
                .onAppear {
                    fetchStandings()
                }
        } else {
            List(standings, id: \.team.name) { standing in
                VStack(alignment: .leading) {
                    Text(standing.team.name)
                        .font(.headline)
                    Text("Wins: \(standing.stats["wins"]?.wins ?? 0)")
                    Text("Losses: \(standing.stats["wins"]?.losses ?? 0)")
                    // Add other relevant standings data as needed
                }
            }
            .navigationTitle("\(sportTeam.gender) \(sportTeam.sport) Standings")
        }
    }
    
    private func fetchStandings() {
        guard let urlString = sportTeam.urlString, let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(StandingsResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.standings = response.groups.flatMap { $0.standings }
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            }
        }.resume()
    }
}

struct TeamStandingsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamStandingsView()
    }
}
