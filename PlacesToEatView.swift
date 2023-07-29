//
//  PlacesToEatView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/17/23.
//

import SwiftUI

struct PlacesToEatView: View {
    let city: City
    @State private var mapApp: MapApp = .google // Default to Google Maps

    var body: some View {
        VStack {
            Picker("Map App", selection: $mapApp) {
                Text("Apple Maps").tag(MapApp.apple)
                Text("Google Maps").tag(MapApp.google)
                Text("Waze").tag(MapApp.waze)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            List {
                ForEach(city.placesToEat.keys.sorted(), id: \.self) { place in
                    if let address = city.placesToEat[place],
                       let url = mapApp.directionsURL(to: address) {
                        Link(destination: url) {
                            Text(place)
                        }
                    } else {
                        Text(place)
                    }
                }
            }
            .navigationTitle("Places to Eat in \(city.name), \(city.state)")
        }
    }
}

struct PlacesToEatView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesToEatView(city: cities[0])
    }
}

let cities = [
    City(school: "Akron", name: "Akron", state: "OH", placesToEat: [:]),
    City(school: "Ball State", name: "Muncie", state: "IN", placesToEat: [
        "By Hand in Fork": "1617 N, 1617 Wheeling Ave, Muncie, IN 47303",
        "Savage's Ale House": "127 N High St, Muncie, IN 47305",
        "1925 PubHouse Courtyard": "625 S High St, Muncie, IN 47305",
        "Amazing Joe's Grill": "909 Wheeling Ave, Muncie, IN 47303",
        "Pizza King": "1421 W Bethel Ave, Muncie, IN 47304"
    ]),
    City(school: "BGSU", name: "Bowling Green", state: "OH", placesToEat: [
        "Kermit's Family Restaurant": "307 S Main St, Bowling Green, OH 43402",
        "Campus Pollyeyes": "440 E Court St, Bowling Green, OH 43402",
        "Beckett's Burger Bar & Barrel Room": "163 S Main St, Bowling Green, OH 43402",
        "The Stones Throw Tavern and Grill": "176 E Wooster St, Bowling Green, OH 43402"
    ]),
    City(school: "Buffalo", name: "Buffalo", state: "NY", placesToEat: [:]),
    City(school: "Central Michigan", name: "Mount Pleasant", state: "MI", placesToEat: [
        "The Cabin": "930 W Broomfield St, Mt Pleasant, MI 48858",
        "Freddie's Tavern": "705 S Adams St, Mt Pleasant, MI 48858",
        "The Brass": "128 S Main St, Mt Pleasant, MI 48858"
    ]),
    City(school: "Eastern Michigan", name: "Ypsilanti", state: "MI", placesToEat: [
        "The Bomber": "306 E Michigan Ave, Ypsilanti, MI 48198",
        "Sidetrack": "56 E Cross St, Ypsilanti, MI 48198"
    ]),
    City(school: "Kent State", name: "Kent", state: "OH", placesToEat: [
        "Mikes Place": "1700 S Water St #4447, Kent, OH 44240",
        "Franklin Square Deli": "108 S Water St, Kent, OH 44240",
        "Ray's Place": "135 Franklin Ave, Kent, OH 44240",
        "Over Easy At The Depot": "152 Franklin Ave, Kent, OH 44240",
        "Twisted Meltz": "164 E Main St, Kent, OH 44240"
    ]),
    City(school: "Miami", name: "Oxford", state: "OH", placesToEat: [
        "Skipper's Pub and Top Deck": "121 E High St, Oxford, OH 45056",
        "SDS Pizza": "7 E Chestnut St, Oxford, OH 45056",
        "Mac and Joe's": "21 E High St, Oxford, OH 45056",
        "Corner Grill and Drinkery": "12 E Park Pl, Oxford, OH 45056",
        "The Pickle and Pig": "77 S Main St, Oxford, OH 45056"
    ]),
    City(school: "Northern Illinois", name: "DeKalb", state: "IL", placesToEat: [
        "Fatty's Pub": "1312 W Lincoln Hwy, DeKalb, IL 60115",
        "Pizza Pro's": "1205 W Lincoln Hwy, DeKalb, IL 60115",
        "The Junction Eating Place": "816 W Lincoln Hwy, DeKalb, IL 60115",
        "Molly's Eatery and Drinkery": "1000 W Lincoln Hwy, DeKalb, IL 60115"
    ]),
    City(school: "Ohio", name: "Athens", state: "OH", placesToEat: [:]),
    City(school: "Toledo", name: "Toledo", state: "OH", placesToEat: [
        "Beruit": "4082 Monroe St, Toledo, OH 43606",
        "Original Pancake House": "3310 Central Ave, Toledo, OH 43606",
        "Tony Packos": "3348 Secor Rd, Toledo, OH 43606",
        "Stubborn Brother Pizza": "3115 W Bancroft St, Toledo, OH 43606",
        "Bubba's 33": "3534 Secor Rd, Toledo, OH 43606"
    ]),
    City(school: "Western Michigan", name: "Kalamazoo", state: "MI", placesToEat: [
        "Maggie's Cafe": "3290 Stadium Dr, Kalamazoo, MI 49008",
        "Old Burdick's": "100 W Michigan Ave, Kalamazoo, MI 49007",
        "University Roadhouse": "1332 W Michigan Ave, Kalamazoo, MI 49006",
        "Saugatuck Brewing Co": "200 E Michigan Ave, Kalamazoo, MI 49007",
        "Crow's Nest": "816 S Westnedge Ave, Kalamazoo, MI 49008"
    ])
]
