//
//  PlayerManager.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/13/23.
//

import Foundation
import AVFoundation

class PlayerManager: ObservableObject {
    var player: AVPlayer?
    @Published var isPlaying = false
    @Published var currentProgress: Float = 0.0

    func load(url: URL) {
        self.player = AVPlayer(url: url)
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            guard let currentTime = self.player?.currentTime(), let duration = self.player?.currentItem?.duration else { return }
            self.currentProgress = Float(CMTimeGetSeconds(currentTime) / CMTimeGetSeconds(duration))
        }
    }

    func playPause() {
        guard let player = player else { return }
        isPlaying.toggle()
        if isPlaying {
            player.play()
        } else {
            player.pause()
        }
    }

    func rewind() {
        guard let player = player else { return }
        if let currentTime = player.currentItem?.currentTime(), let duration = player.currentItem?.duration {
            let newTime = max(CMTimeGetSeconds(currentTime) - 15, 0)
            player.seek(to: CMTime(seconds: newTime, preferredTimescale: CMTimeScale(NSEC_PER_SEC)))
        }
    }

    func fastForward() {
        guard let player = player else { return }
        if let currentTime = player.currentItem?.currentTime(), let duration = player.currentItem?.duration {
            let newTime = min(CMTimeGetSeconds(currentTime) + 15, CMTimeGetSeconds(duration))
            player.seek(to: CMTime(seconds: newTime, preferredTimescale: CMTimeScale(NSEC_PER_SEC)))
        }
    }
}
