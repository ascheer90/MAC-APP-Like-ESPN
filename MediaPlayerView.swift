//
//  MediaPlayerView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/8/23.
//

import SwiftUI
import AVKit

struct MediaPlayerView: View {
    let url: URL
    @Binding var isPlaying: Bool
    @StateObject var audioPlayer = AudioPlayer()

    var body: some View {
        VStack {
            Text("Now Playing: \(audioPlayer.nowPlaying)")
                .font(.headline)
                .padding()

            Button(action: {
                if self.isPlaying {
                    self.audioPlayer.pause()
                } else {
                    self.audioPlayer.play(url: url)
                }
                self.isPlaying.toggle()
            }) {
                Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
            .padding()

            Slider(value: $audioPlayer.progress)
                .padding()
        }
        .onDisappear {
            self.audioPlayer.stop()
        }
    }
}

class AudioPlayer: ObservableObject {
    private var player: AVPlayer?
    @Published var nowPlaying = ""
    @Published var progress = 0.0

    func play(url: URL) {
        let playerItem = AVPlayerItem(url: url)
        player = AVPlayer(playerItem: playerItem)

        nowPlaying = (playerItem.asset as? AVURLAsset)?.url.lastPathComponent ?? ""
        
        player?.play()
        
        // This will update the slider while the audio is playing
        player?.addPeriodicTimeObserver(forInterval: CMTimeMake(value: 1, timescale: 1), queue: .main) { [weak self] time in
            self?.progress = time.seconds / (self?.player?.currentItem?.duration.seconds ?? 1)
        }
    }

    func pause() {
        player?.pause()
    }

    func stop() {
        player?.pause()
        player = nil
    }
}
