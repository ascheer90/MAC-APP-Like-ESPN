//
//  RecordHelper.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/19/23.
//
import Foundation

class RecordHelper {
    
    // The function for the history records
    static func calculateRecord(forRivalry rivalry: [RivalryResult]) -> String {
        var records: [String: (Int, Int, Int)] = [:] // wins, losses, ties

        for game in rivalry {
            let teams = game.winner.split(separator: ",")
            if teams.count > 1 {
                for team in teams {
                    let teamName = String(team).trimmingCharacters(in: .whitespacesAndNewlines)
                    records[teamName, default: (0, 0, 0)].2 += 1 // Tie
                }
            } else {
                records[game.winner, default: (0, 0, 0)].0 += 1 // Win
                records[game.loser, default: (0, 0, 0)].1 += 1 // Loss
            }
        }
        
        let leadingTeam = records.max { a, b in
            if a.value.0 == b.value.0 {
                if a.value.1 == b.value.1 {
                    return a.value.2 < b.value.2
                } else {
                    return a.value.1 > b.value.1
                }
            } else {
                return a.value.0 < b.value.0
            }
        }
        
        if let leadingTeam = leadingTeam {
            return "\(leadingTeam.key): \(leadingTeam.value.0)-\(leadingTeam.value.1)-\(leadingTeam.value.2)"
        }
        
        return ""
    }

    // The function for the Michigan MAC Trophy
    static func calculateRecordForMichiganMAC(forRivalry rivalry: [MichiganMACTrophy]) -> String {
        var records: [String: (Int, Int, Int)] = [:] // wins, losses, ties
        
        for trophy in rivalry {
            let (team1Record, team2Record, team3Record) = trophy.records
            let team1 = team1Record.split(separator: "-")
            let team2 = team2Record.split(separator: "-")
            let team3 = team3Record.split(separator: "-")
            
            // Assuming the records are in the format: "TeamName-Wins-Losses-Ties"
            if team1.count == 4 {
                let teamName = String(team1[0])
                let wins = Int(team1[1]) ?? 0
                let losses = Int(team1[2]) ?? 0
                let ties = Int(team1[3]) ?? 0
                records[teamName] = (wins, losses, ties)
            }
            
            if team2.count == 4 {
                let teamName = String(team2[0])
                let wins = Int(team2[1]) ?? 0
                let losses = Int(team2[2]) ?? 0
                let ties = Int(team2[3]) ?? 0
                records[teamName] = (wins, losses, ties)
            }
            
            if team3.count == 4 {
                let teamName = String(team3[0])
                let wins = Int(team3[1]) ?? 0
                let losses = Int(team3[2]) ?? 0
                let ties = Int(team3[3]) ?? 0
                records[teamName] = (wins, losses, ties)
            }
        }
        
        let leadingTeam = records.max { a, b in
            if a.value.0 == b.value.0 {
                return a.value.1 > b.value.1
            } else {
                return a.value.0 < b.value.0
            }
        }
        
        if let leadingTeam = leadingTeam {
            return "\(leadingTeam.key): \(leadingTeam.value.0)-\(leadingTeam.value.1)-\(leadingTeam.value.2)"
        }
        
        return ""
    }
}
