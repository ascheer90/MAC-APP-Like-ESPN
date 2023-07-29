//
//  MAC_APP_Like_ESPNApp.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/6/23.
//

import SwiftUI
import AVFoundation

@main
struct MAC_APP_Like_ESPNApp: App {
    @StateObject var playerManager = PlayerManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(playerManager)
        }
    }
}


class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default, options: [])
        } catch {
            print("Setting category to AVAudioSessionCategoryPlayback failed.")
        }

        return true
    }
}
