//
//  TeamView.swift
//  MAC APP Like ESPNTests
//
//  Created by Alex Scheer on 7/16/23.
//

import SwiftUI

struct TeamListView: View {
    var columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(teams) { team in
                        NavigationLink(destination: TeamDetailView(team: team)) {
                            VStack {
                                Image(team.logo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 60)
                                    .padding()
                                Text(team.school)
                                HStack {
                                    Text(team.mascot)
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
            .navigationTitle("Teams")
        }
    }
}
