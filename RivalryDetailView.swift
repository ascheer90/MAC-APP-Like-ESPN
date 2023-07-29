//
//  RivalryDetailView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/13/23.
//

import SwiftUI

struct RivalryDetailView: View {
    let rivalry: Rivalry
    
    var body: some View {
        VStack {
            Text(rivalry.name)
                .font(.largeTitle)
                .padding()
            HStack {
                ForEach(rivalry.teams, id: \.id) { team in
                    VStack {
                        Image(team.name.replacingOccurrences(of: " ", with: "_"))
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }
                }
            }
            
            // Display the overall records
            Text("Record: \(calculateThreeWayRecord(forRivalry: rivalry))")
            
            if !rivalry.michiganMACTrophy.isEmpty {
                List(rivalry.michiganMACTrophy.sorted(by: { $0.year > $1.year }), id: \.year) { result in
                    Text("\(result.year) - Winner: \(result.trophyWinner)")
                }
            } else {
                List(rivalry.history.sorted(by: { $0.year > $1.year }), id: \.year) { result in
                    Text("\(result.year): \(result.winner) - \(result.winnerScore), \(result.loser) - \(result.loserScore)")
                }
            }
        }
    }
    
    func calculateThreeWayRecord(forRivalry rivalry: Rivalry) -> String {
        var records: [String] = []
        let teamRecords = rivalry.michiganMACTrophy
        let teamNames = rivalry.teams.map(\.name)
        
        for teamName in teamNames {
            var wins = 0
            for record in teamRecords {
                if record.trophyWinner == teamName {
                    let winCountString = String(record.winCounts.0)
                    let winCount = Int(winCountString.replacingOccurrences(of: "–", with: ""))
                    if let count = winCount, count > 0 {
                        wins += 1
                    }
                }
            }
            records.append("\(teamName): \(wins) win\(wins == 1 ? "" : "s")")
        }
        
        return records.joined(separator: ", ")
    }
}
