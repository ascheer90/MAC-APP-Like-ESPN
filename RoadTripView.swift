//
//  RoadTripView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/17/23.
//

import SwiftUI

struct RoadTripView: View {
    let columns = [
        GridItem(.adaptive(minimum: 160))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    NavigationLink(destination: CityListView()) {
                        VStack {
                            Image(systemName: "fork.knife")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 80)
                            Text("Places To Eat")
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    }
                    NavigationLink(destination: CampusMapView()) {
                        VStack {
                            Image(systemName: "map")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 80)
                            Text("Campus Map")
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    }
                    NavigationLink(destination: SightSeeingView()) {
                        VStack {
                            Image(systemName: "sunset") // or Image("landmark") if using a custom image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 80)
                            Text("Sightseeing")
                        }
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }
            .navigationBarTitle("On The Road", displayMode: .automatic)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CityListView: View {
    var body: some View {
        List(cities, id: \.school) { city in
            NavigationLink(destination: PlacesToEatView(city: city)) {
                Text(city.name)
            }
        }
        .navigationTitle("Select a City")
    }
}
