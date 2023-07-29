//
//  MoreView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/6/23.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("favoriteTeam") var favoriteTeam = 0
    @State private var notificationsEnabled = true
    
    let teams = [
        "Akron Zips",
        "Ball State Cardinals",
        "Bowling Green Falcons",
        "Buffalo Bulls",
        "Central Michigan Chippewas",
        "Eastern Michigan Eagles",
        "Kent State Golden Flashes",
        "Miami RedHawks",
        "Northern Illinois Huskies",
        "Ohio Bobcats",
        "Toledo Rockets",
        "Western Michigan Broncos"
    ]

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Preferences")) {
                    Picker("Favorite Team", selection: $favoriteTeam) {
                        ForEach(teams.indices, id: \.self) { index in
                            Text(teams[index]).tag(index)
                        }
                    }
                    
                    Toggle("Enable Notifications", isOn: $notificationsEnabled)
                }
                
                Section(header: Text("About")) {
                    Button(action: {
                        // Handle "About" button tap
                    }) {
                        Text("About the App")
                    }
                }
            }
            .navigationTitle("More")
        }
    }
}

struct MSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
