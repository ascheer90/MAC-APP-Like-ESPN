//
//  CampusMapView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/17/23.
//

import SwiftUI

struct CampusMapView: View {
    
    struct School {
        let name: String
        let address: String
        let mapURL: URL
    }
    
    let schools = [
        School(name: "Akron", address: "302 Buchtel Common, Akron, OH 44325", mapURL: URL(string: "https://www.uakron.edu/resources/docs/UCM-1014-32613.pdf")!),
        School(name: "Ball State", address: "2000 W University Ave, Muncie, IN 47306", mapURL: URL(string: "https://www.bsu.edu/-/media/www/files/map/parkingmap.pdf?sc_lang=en&hash=BD6022B3428D5924A494047D1FF921ECFC494BC4")!),
        School(name: "Bowling Green", address: "Bowling Green, OH 43403", mapURL: URL(string: "https://www.bgsu.edu/content/dam/BGSU/parking-services/documents/campus-parking-map.pdf")!),
        School(name: "Buffalo", address: "Buffalo, NY 14260", mapURL: URL(string: "https://www.buffalo.edu/content/dam/www/parking/North%20Campus%20Parking%20Map%2011x17.pdf")!),
        School(name: "Central Michigan", address: "1200 S Franklin St, Mt Pleasant, MI 48859", mapURL: URL(string: "https://www.cmich.edu/docs/default-source/finance-and-administrative-services-division/cmu-police/parking-services/2022-2023-cmu-parking-services-map-and-regulations-10904_gen_pol_parking-regulations-and-map_22-(1)-compressed.pdf")!),
        School(name: "Eastern Michigan", address: "Ypsilanti, MI 48197", mapURL: URL(string: "https://campusvisitorguides.com/emich/campus-map/")!),
        School(name: "Kent State", address: "800 E Summit St, Kent, OH 44240", mapURL: URL(string: "https://www-s3-live.kent.edu/s3fs-root/s3fs-public/file/ASC_0.pdf?VersionId=ehuXkYkn9Jd4Urv0jaqLzuIlw67FdCbv")!),
        School(name: "Miami", address: "501 E High St, Oxford, OH 45056", mapURL: URL(string: "https://issuu.com/spliceensemble/docs/campus-map-2018-annotated")!),
        School(name: "Northern Illinois", address: "1425 W Lincoln Hwy, DeKalb, IL 60115", mapURL: URL(string: "http://www.mappery.com/map-of/Northern-Illinois-University-Map")!),
        School(name: "Ohio", address: "1 Ohio University, Athens, OH 45701", mapURL: URL(string: "https://www.ohio.edu/sites/default/files/sites/transportation-parking/2022-parking-map.pdf")!),
        School(name: "Toledo", address: "2801 W Bancroft St, Toledo, OH 43606", mapURL: URL(string: "https://www.utoledo.edu/visit/walking-tour/main-campus-map/")!),
        School(name: "Western Michigan", address: "1903 W Michigan Ave, Kalamazoo, MI 49008", mapURL: URL(string: "https://wmich.edu/sites/default/files/attachments/u238/2022/22059%20Admissions%20Campus%20Map_EDIT_2022.pdf")!)
    ]

    var body: some View {
        List(schools, id: \.name) { school in
            VStack(alignment: .leading) {
                Text(school.name)
                    .font(.headline)
                Text(school.address)
                    .font(.subheadline)
                Link("Campus Map", destination: school.mapURL)
            }
        }
        .navigationTitle("Campus Maps")
    }
}
