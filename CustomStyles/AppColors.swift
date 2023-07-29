//
//  AppColors.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 7/18/23.
//

import SwiftUI

extension Color {
    static let primaryColor = Color(UIColor(hex: "#0d2647"))
    static let secondaryColor = Color(UIColor(hex: "#00a160"))
}

// UIColor extension to convert HEX to UIColor
extension UIColor {
    convenience init(hex: String) {
        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if cString.hasPrefix("#") {
            cString.remove(at: cString.startIndex)
        }

        var rgbValue: UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

struct ContentView: View {
    @StateObject var playerManager = PlayerManager() // Create the player manager

    init() {
        // Customize appearance of tab bar
        UITabBar.appearance().barTintColor = UIColor(Color.secondaryColor)
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.primaryColor)
        UITabBar.appearance().tintColor = .white

        // Customize appearance of navigation bar
        UINavigationBar.appearance().barTintColor = UIColor(Color.primaryColor)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }

    var body: some View {
        TabView {
            // Teams
            NavigationView {
                TeamListView()
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "sportscourt")
                Text(NSLocalizedString("Teams", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar

            // Live Scores
            NavigationView {
                ScoresView()
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text(NSLocalizedString("Live Scores", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar

            // News
            NavigationView {
                NewsView()
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "newspaper.fill")
                Text(NSLocalizedString("News", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar

            // Standings
            NavigationView {
                TeamStandingsView()
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "list.number")
                Text(NSLocalizedString("Standings", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar

            // Rivalry Tracker
            NavigationView {
                RivalryTrackerView()
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "flame.fill")
                Text(NSLocalizedString("Rivalry Tracker", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar

            // On The Road
            NavigationView {
                RoadTripView()
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "car.fill")
                Text(NSLocalizedString("On The Road", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar

            // Sights and Sounds
            NavigationView {
                StadiumSoundsView() // New Sights and Sounds of the Stadium view
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "speaker.wave.2.fill")
                Text(NSLocalizedString("Sights and Sounds", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar

            // Podcast
            NavigationView {
                PodcastView()
                    .environmentObject(playerManager) // Pass it as an environment object
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "mic.fill")
                Text(NSLocalizedString("Podcast", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar

            // Settings
            NavigationView {
                SettingsView()
                    .navigationBarTitle("", displayMode: .inline) // Empty title
            }
            .tabItem {
                Image(systemName: "ellipsis.circle.fill")
                Text(NSLocalizedString("Settings", comment: "Tab bar item title"))
            }
            .background(Color.primaryColor.edgesIgnoringSafeArea(.top)) // Set custom background color for navigation bar
        }
        .background(Color.secondaryColor.edgesIgnoringSafeArea(.bottom)) // Set custom background color for tab bar
    }
}
