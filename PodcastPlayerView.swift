//
//  PodcastPlayerView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/11/23.
//

import SwiftUI
import AVFoundation

struct PodcastPlayerView: View {
    let podcastURL: URL
    let podcastTitle: String
    @EnvironmentObject var playerManager: PlayerManager
    
    var body: some View {
        VStack {
            Image("CSC_Podcast_Cover")
                .resizable()
                .frame(width: 200, height: 200)
                .cornerRadius(10)
                .padding()
            Text(podcastTitle)
                .font(.title)
                .multilineTextAlignment(.center)
            Button(action: {
                playerManager.playPause()
            }) {
                Image(systemName: playerManager.isPlaying ? "pause.fill" : "play.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            HStack {
                Button(action: {
                    playerManager.rewind()
                }) {
                    Image(systemName: "gobackward.15")
                }
                Slider(value: $playerManager.currentProgress, in: 0...1, step: 0.1)
                    .padding()
                Button(action: {
                    playerManager.fastForward()
                }) {
                    Image(systemName: "goforward.15")
                }
            }
            .padding()
            Spacer()
        }
        .onAppear {
            playerManager.load(url: self.podcastURL)
        }
    }
}
