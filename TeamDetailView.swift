//
//  TeamDetailView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/8/23.
//

import SwiftUI

struct TeamDetailView: View {
    let team: Team

    var body: some View {
        VStack {
            HStack {
                Image(team.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                Text(team.name)
                    .font(.largeTitle)
                    .bold()
            }
            .padding()

            ScrollView {
                VStack(alignment: .center) { //Changed alignment to .center
                    ForEach(team.sports, id: \.id) { sport in
                        VStack(alignment: .center) { //Changed alignment to .center
                            Text(sport.name)
                                .font(.custom("Arial", size: 24))  // Custom font size
                                .frame(maxWidth: .infinity, alignment: .center) //Centered text

                            HStack {
                                Link(destination: URL(string: sport.twitterURL)!) {
                                    Text("Twitter")
                                        .font(.custom("Arial", size: 18))  // Custom font size
                                        .foregroundColor(.blue)
                                }
                                .padding(.trailing, 10)

                                Text("|")
                                    .padding(.horizontal, 5)

                                Link(destination: URL(string: sport.scheduleURL)!) {
                                    Text("Schedule")
                                        .font(.custom("Arial", size: 18))  // Custom font size
                                        .foregroundColor(.blue)
                                }
                                .padding(.trailing, 10)

                                Text("|")
                                    .padding(.horizontal, 5)

                                Link(destination: URL(string: sport.rosterURL)!) {
                                    Text("Roster")
                                        .font(.custom("Arial", size: 18))  // Custom font size
                                        .foregroundColor(.blue)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .center) //Centered text
                        }
                        .padding(.vertical)
                    }
                }
            }
        }
    }
}
