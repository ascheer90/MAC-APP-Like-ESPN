//
//  CityDetailView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/21/23.
//

import SwiftUI

enum MapApp {
    case apple, google, waze

    func directionsURL(to location: String) -> URL? {
        let urlString: String
        switch self {
        case .apple:
            urlString = "http://maps.apple.com/?daddr=\(location)"
        case .google:
            urlString = "comgooglemaps://?daddr=\(location)&directionsmode=driving"
        case .waze:
            urlString = "waze://?q=\(location)&navigate=yes"
        }

        return URL(string: urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
    }
}

struct CityDetailView: View {
    let city: City
    var mapApp: MapApp = .apple // Change this to use a different map app

    var body: some View {
        List(city.placesToEat.keys.sorted(), id: \.self) { place in
            if let address = city.placesToEat[place], let url = mapApp.directionsURL(to: address) {
                Link(destination: url) {
                    Text(place)
                }
            } else {
                Text(place)
            }
        }
        .navigationBarTitle(Text("\(city.name), \(city.state)"), displayMode: .inline)
    }
}
