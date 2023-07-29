//
//  RivalryTrackerView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/9/23.
//

import SwiftUI

struct RivalryTrackerView: View {
    var body: some View {
        NavigationView {
            List(rivalries) { rivalry in
                NavigationLink(destination: RivalryDetailView(rivalry: rivalry)) {
                    VStack(alignment: .leading) {
                        Text(rivalry.name)
                        ForEach(rivalry.teams) { team in
                            Text(team.name)
                        }
                    }
                }
            }
            .navigationTitle("Rivalry Tracker")
        }
    }
}
