//
//  BackgroundAudioPlayer.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/13/23.
//

import Foundation
import AVFoundation

class BackgroundAudioPlayer {
    static let shared = BackgroundAudioPlayer()

    private var audioSession: AVAudioSession!
    private var audioPlayer: AVPlayer?

    private init() {
        setupAudioSession()
    }

    private func setupAudioSession() {
        audioSession = AVAudioSession.sharedInstance()

        do {
            try audioSession.setCategory(.playback, mode: .default, policy: .longFormAudio, options: [])
        } catch {
            print("Setting category to AVAudioSessionCategoryPlayback failed.")
        }
    }

    func play(url: URL) {
        audioPlayer = AVPlayer(url: url)
        audioPlayer?.play()
    }

    func pause() {
        audioPlayer?.pause()
    }

    func resume() {
        audioPlayer?.play()
    }
}
