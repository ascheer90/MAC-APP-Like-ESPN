//
//  RivarlySwiftView.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/13/23.
//

import SwiftUI

struct RivalryListView: View {
    var body: some View {
        NavigationView {
            List(rivalries) { rivalry in
                NavigationLink(destination: RivalryDetailView(rivalry: rivalry)) {
                    HStack {
                        Text(rivalry.name)
                    }
                }
            }
            .navigationTitle("Rivalries")
        }
    }
}

struct RivalryListView_Previews: PreviewProvider {
    static var previews: some View {
        RivalryListView()
    }
}
