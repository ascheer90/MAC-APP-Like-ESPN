//
//  City.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 6/21/23.
//

import Foundation

struct City: Identifiable {
    let id = UUID()
    let school: String
    let name: String
    let state: String
    let placesToEat: [String: String] // dictionary where the key is place's name and the value is address
}
