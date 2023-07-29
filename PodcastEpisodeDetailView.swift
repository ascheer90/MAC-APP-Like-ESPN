//
//  PodcastEpisodeDetailView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/11/23.
//

import SwiftUI
import AVFoundation

struct PodcastEpisodeDetailView: View {
    let episode: PodcastEpisode
    let audioPlayer: AVPlayer

    var body: some View {
        VStack {
            Text(episode.title)
                .font(.title)
            Text(episode.pubDate, style: .date)
                .font(.subheadline)
                .foregroundColor(.gray)
            PlayerView(player: audioPlayer)
            Spacer()
        }
        .onAppear {
            audioPlayer.pause()
            audioPlayer.play()
        }
    }
}

struct PodcastEpisodeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let episode = PodcastEpisode(title: "Test Title", description: "Test Description", enclosureURL: URL(string: "https://example.com")!, pubDate: Date())
        let player = AVPlayer()
        return PodcastEpisodeDetailView(episode: episode, audioPlayer: player)
    }
}
