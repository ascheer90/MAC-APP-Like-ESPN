//
//  StadiumSoundsView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/27/23.
//

import AVFoundation
import Foundation
import SwiftUI

struct Band: Identifiable, Hashable, Equatable {
    let id: Int
    let name: String
    let logo: String // Added new field for logo image
    let webLinks: [WebLink]
    let songs: [Song] // Add songs property

    static func ==(lhs: Band, rhs: Band) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

struct Song: Identifiable {
    let id = UUID()
    let title: String
    let audioFileName: String
    let lyrics: String // Add lyrics property
}

struct SongDetailView: View {
    let song: Song
    @State private var isPlaying = false
    @State private var audioPlayer: AVAudioPlayer?

    var body: some View {
        VStack {
            Text("Song Detail View")
            Text("Title: \(song.title)")

            Button(action: {
                toggleAudioPlayback()
            }) {
                Text(isPlaying ? "Pause" : "Play")
            }

            // Display the lyrics
            ScrollView {
                Text(song.lyrics) // Replace this with the actual lyrics later
                    .padding()
            }
        }
        .onAppear {
            prepareAudio()
        }
        .onDisappear {
            stopAudio()
        }
    }

    private func prepareAudio() {
        guard let url = Bundle.main.url(forResource: song.audioFileName, withExtension: "mp3") else {
            return
        }

        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
        } catch {
            print("Failed to prepare audio: \(error.localizedDescription)")
        }
    }

    private func toggleAudioPlayback() {
        guard let audioPlayer = audioPlayer else { return }

        if isPlaying {
            audioPlayer.pause()
        } else {
            audioPlayer.play()
        }

        isPlaying.toggle()
    }
    
    private func stopAudio() {
        audioPlayer?.stop()
        audioPlayer = nil
    }
}


struct WebLink: Identifiable {
    let id: Int
    let title: String
    let url: String
}

struct StadiumSoundsView: View {
    @State private var selectedBand: Band? = nil
    let bands: [Band] = [
        Band(
            id: 1,
            name: "Ohio’s Pride Marching Band",
            logo: "Akron",
            webLinks: [
                WebLink(id: 1, title: "Official Website", url: "https://www.uakron.edu/bands/athletic-bands/marching-band.dot"),
                WebLink(id: 2, title: "Twitter", url: "https://twitter.com/UAkronBands"),
                WebLink(id: 3, title: "Facebook", url: "https://www.facebook.com/OhiosPride")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "UA_FightSong", lyrics: "Lyrics for Akron's fight song..."),
                Song(title: "Alma Mater", audioFileName: "UA_AlmaMater", lyrics: "Lyrics for Akron's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "akron_first_down_cheer", lyrics: "Lyrics for Akron's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "akron_third_down_cheer", lyrics: "Lyrics for Akron's third down cheer...")
            ]
        ),
        Band(
            id: 2,
            name: "Pride of Mid-America Marching Band",
            logo: "Ball_State",
            webLinks: [
                WebLink(id: 4, title: "Official Website", url: "https://www.bsu.edu/academics/collegesanddepartments/music/ensembles/bands/marching-band"),
                WebLink(id: 5, title: "Instagram", url: "https://www.instagram.com/ballstatepoma/"),
                WebLink(id: 6, title: "Twitter", url: "https://twitter.com/ballstatepoma"),
                WebLink(id: 7, title: "Facebook", url: "https://www.facebook.com/ballstatepoma")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "ball_state_fight_song", lyrics: "Lyrics for Ball State's fight song..."),
                Song(title: "Alma Mater", audioFileName: "ball_state_alma_mater", lyrics: "Lyrics for Ball State's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "ball_state_first_down_cheer", lyrics: "Lyrics for Ball State's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "ball_state_third_down_cheer", lyrics: "Lyrics for Ball State's third down cheer...")
            ]
        ),
        Band(
            id: 3,
            name: "Falcon Marching Band",
            logo: "Bowling_Green",
            webLinks: [
                WebLink(id: 8, title: "Official Website", url: "https://www.bgsu.edu/musical-arts/ensembles/bands/athletic-bands.html?short=fmb"),
                WebLink(id: 9, title: "Instagram", url: "https://www.instagram.com/bgsufalconmarchingband/"),
                WebLink(id: 10, title: "Twitter", url: "https://twitter.com/BGSUFMB10"),
                WebLink(id: 11, title: "Facebook", url: "https://www.facebook.com/BGSUFMB/")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "BGSU_FightSong", lyrics: "Lyrics for Bowling Green's fight song..."),
                Song(title: "Alma Mater", audioFileName: "bowling_green_alma_mater", lyrics: "Lyrics for Bowling Green's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "bowling_green_first_down_cheer", lyrics: "Lyrics for Bowling Green's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "bowling_green_third_down_cheer", lyrics: "Lyrics for Bowling Green's third down cheer...")
            ]
        ),
        Band(
            id: 4,
            name: "The Thunder of the East",
            logo: "Buffalo",
            webLinks: [
                WebLink(id: 12, title: "Official Website", url: "https://www.buffalo.edu/studentlife/life-on-campus/clubs-and-activities/search/marching-band.html"),
                WebLink(id: 13, title: "Instagram", url: "https://www.instagram.com/ubmarchingband/"),
                WebLink(id: 14, title: "Twitter", url: "https://twitter.com/UBMarchingBand"),
                WebLink(id: 15, title: "Facebook", url: "https://www.facebook.com/UBMarchingBand")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "buffalo_fight_song", lyrics: "Lyrics for Buffalo's fight song..."),
                Song(title: "Alma Mater", audioFileName: "buffalo_alma_mater", lyrics: "Lyrics for Buffalo's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "buffalo_first_down_cheer", lyrics: "Lyrics for Buffalo's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "buffalo_third_down_cheer", lyrics: "Lyrics for Buffalo's third down cheer...")
            ]
        ),
        Band(
            id: 5,
            name: "The Chippewa Marching Band",
            logo: "CMU_Band",
            webLinks: [
                WebLink(id: 32, title: "Official Website", url: "https://www.cmich.edu/academics/colleges/college-arts-media/departments-schools/school-of-music/the-chippewa-marching-band"),
                WebLink(id: 34, title: "Twitter", url: "http://twitter.com/MarchingChips"),
                WebLink(id: 35, title: "Facebook", url: "http://www.facebook.com/pages/The-Chippewa-Marching-Band/102362928192")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "chippewa_fight_song", lyrics: "Lyrics for CMU's fight song..."),
                Song(title: "Alma Mater", audioFileName: "chippewa_alma_mater", lyrics: "Lyrics for CMU's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "chippewa_first_down_cheer", lyrics: "Lyrics for CMU's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "chippewa_third_down_cheer", lyrics: "Lyrics for CMU's third down cheer...")
            ]
        ),
        Band(
            id: 6,
            name: "The Pride of the Peninsula",
            logo: "EMU_Band",
            webLinks: [
                WebLink(id: 40, title: "Official Website", url: "https://www.emich.edu/music-dance/students/ensembles/marching-band.php"),
                WebLink(id: 41, title: "Instagram", url: "https://www.instagram.com/emu.band/"),
                WebLink(id: 42, title: "YouTube", url: "https://www.youtube.com/channel/UCblZBHsBNhKVBQNd_UhPfEQ"),
                WebLink(id: 43, title: "Facebook", url: "https://www.facebook.com/emu.band")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "emu_fight_song", lyrics: "Lyrics for EMU's fight song..."),
                Song(title: "Alma Mater", audioFileName: "emu_alma_mater", lyrics: "Lyrics for EMU's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "emu_first_down_cheer", lyrics: "Lyrics for EMU's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "emu_third_down_cheer", lyrics: "Lyrics for EMU's third down cheer...")
            ]
        ),
        Band(
            id: 7,
            name: "Marching Golden Flashes",
            logo: "Kent_State",
            webLinks: [
                WebLink(id: 47, title: "Official Website", url: "https://www.kent.edu/MGF"),
                WebLink(id: 48, title: "Instagram", url: "https://instagram.com/ksumgf/"),
                WebLink(id: 49, title: "Twitter", url: "https://twitter.com/ksumgf"),
                WebLink(id: 50, title: "Facebook", url: "https://www.facebook.com/kentstatemgf")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "kent_state_fight_song", lyrics: "Lyrics for Kent State's fight song..."),
                Song(title: "Alma Mater", audioFileName: "kent_state_alma_mater", lyrics: "Lyrics for Kent State's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "kent_state_first_down_cheer", lyrics: "Lyrics for Kent State's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "kent_state_third_down_cheer", lyrics: "Lyrics for Kent State's third down cheer...")
            ]
        ),
        Band(
            id: 8,
            name: "Miami Marching Band",
            logo: "Miami_OH",
            webLinks: [
                WebLink(id: 55, title: "Official Website", url: "http://music.miamioh.edu/mumb/"),
                WebLink(id: 56, title: "Instagram", url: "https://www.instagram.com/miamioh_mumb/"),
                WebLink(id: 57, title: "Twitter", url: "http://www.twitter.com/miamiohmumb"),
                WebLink(id: 58, title: "Facebook", url: "https://www.facebook.com/miamiohmarchingband/")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "miami_fight_song", lyrics: "Lyrics for Miami's fight song..."),
                Song(title: "Alma Mater", audioFileName: "miami_alma_mater", lyrics: "Lyrics for Miami's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "miami_first_down_cheer", lyrics: "Lyrics for Miami's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "miami_third_down_cheer", lyrics: "Lyrics for Miami's third down cheer...")
            ]
        ),
        Band(
            id: 9,
            name: "Huskie Marching Band",
            logo: "Northern_Illinois",
            webLinks: [
                WebLink(id: 63, title: "Official Website", url: "https://www.niu.edu/band/index.shtml"),
                WebLink(id: 64, title: "Facebook", url: "https://www.facebook.com/huskiemarchingband/")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "huskie_fight_song", lyrics: "Lyrics for NIU's fight song..."),
                Song(title: "Alma Mater", audioFileName: "huskie_alma_mater", lyrics: "Lyrics for NIU's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "huskie_first_down_cheer", lyrics: "Lyrics for NIU's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "huskie_third_down_cheer", lyrics: "Lyrics for NIU's third down cheer...")
            ]
        ),
        Band(
            id: 10,
            name: "Marching 110",
            logo: "Ohio",
            webLinks: [
                WebLink(id: 69, title: "Official Website", url: "https://www.ohio.edu/marching-110"),
                WebLink(id: 70, title: "Instagram", url: "http://instagram.com/marching110"),
                WebLink(id: 71, title: "Twitter", url: "http://www.twitter.com/marching110/"),
                WebLink(id: 72, title: "Facebook", url: "https://www.facebook.com/marching110")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "ohio_fight_song", lyrics: "Lyrics for Ohio's fight song..."),
                Song(title: "Alma Mater", audioFileName: "ohio_alma_mater", lyrics: "Lyrics for Ohio's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "ohio_first_down_cheer", lyrics: "Lyrics for Ohio's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "ohio_third_down_cheer", lyrics: "Lyrics for Ohio's third down cheer...")
            ]
        ),
        Band(
            id: 11,
            name: "Rocket Marching Band",
            logo: "Toledo",
            webLinks: [
                WebLink(id: 77, title: "Official Website", url: "https://www.utoledo.edu/bands/"),
                WebLink(id: 78, title: "Instagram", url: "https://www.instagram.com/rocketmarchingband/?hl=en"),
                WebLink(id: 79, title: "Twitter", url: "https://twitter.com/utrmb?lang=en"),
                WebLink(id: 80, title: "Facebook", url: "https://www.facebook.com/rocketmarchingband/")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "toledo_fight_song", lyrics: "Lyrics for Toledo's fight song..."),
                Song(title: "Alma Mater", audioFileName: "toledo_alma_mater", lyrics: "Lyrics for Toledo's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "toledo_first_down_cheer", lyrics: "Lyrics for Toledo's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "toledo_third_down_cheer", lyrics: "Lyrics for Toledo's third down cheer...")
            ]
        ),
        Band(
            id: 12,
            name: "Bronco Marching Band",
            logo: "Western_Michigan",
            webLinks: [
                WebLink(id: 85, title: "Official Website", url: "https://wmich.edu/marchingband"),
                WebLink(id: 86, title: "Instagram", url: "https://www.instagram.com/wmu_broncoband/"),
                WebLink(id: 87, title: "Twitter", url: "https://twitter.com/wmu_broncoband"),
                WebLink(id: 88, title: "Facebook", url: "https://www.facebook.com/BroncoMarchingBand")
            ],
            songs: [
                Song(title: "Fight Song", audioFileName: "western_michigan_fight_song", lyrics: "Lyrics for Western Michigan's fight song..."),
                Song(title: "Alma Mater", audioFileName: "western_michigan_alma_mater", lyrics: "Lyrics for Western Michigan's alma mater..."),
                Song(title: "First Down Cheer", audioFileName: "western_michigan_first_down_cheer", lyrics: "Lyrics for Western Michigan's first down cheer..."),
                Song(title: "Third Down Cheer", audioFileName: "western_michigan_third_down_cheer", lyrics: "Lyrics for Western Michigan's third down cheer...")
            ]
        ),
    ]

    var columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(bands) { band in
                        NavigationLink(destination: BandDetailView(band: band)) {
                            VStack {
                                Image(band.logo)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                    .padding()
                                Text(band.name)
                                    .font(.headline)
                                    .multilineTextAlignment(.center)
                            }
                            .frame(maxWidth: .infinity, minHeight: 100, alignment: .center)
                            .padding()
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(10)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding()
            }
            .navigationTitle("Stadium Sounds")
        }
    }
}

struct BandDetailView: View {
    let band: Band

    var body: some View {
        VStack {
            Image(band.logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text(band.name)
                .font(.title)
                .padding()

            List {
                Section(header: Text("Links")) {
                    ForEach(band.webLinks) { webLink in
                        Link(webLink.title, destination: URL(string: webLink.url)!)
                    }
                }

                Section(header: Text("Songs")) {
                    ForEach(band.songs) { song in
                        NavigationLink(destination: SongDetailView(song: song)) {
                            HStack {
                                Text(song.title)
                                Spacer()
                                Image(systemName: "arrow.right")
                            }
                        }
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct StadiumSoundsView_Previews: PreviewProvider {
    static var previews: some View {
        StadiumSoundsView()
    }
}
