//
//  NetworkManager.swift
//  MAC APP Like ESPN
//
//  Created by Alex Scheer on 5/9/23.
//

import Foundation

struct Sport: Decodable {
    var id: Int
    var name: String
    var twitterHandle: String
    var twitterURL: String
    var scheduleURL: String
    var rosterURL: String
}

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}

    func fetchSports(completion: @escaping (Result<[Sport], Error>) -> Void) {
        let urlString = "https://allscores.p.rapidapi.com/api/allscores/sports"
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "GET"
        request.addValue("459fd59fa8mshe5f6170fc9fc3ebp1ca248jsn0d1dd662b59c", forHTTPHeaderField: "X-RapidAPI-Key")
        request.addValue("allscores.p.rapidapi.com", forHTTPHeaderField: "X-RapidAPI-Host")

        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                let error = NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey : "Data was not retrieved from request"]) as Error
                completion(.failure(error))
                return
            }

            do {
                let decoder = JSONDecoder()
                let sports = try decoder.decode([Sport].self, from: data)
                completion(.success(sports))
            } catch {
                completion(.failure(error))
            }
        }

        task.resume()
    }
}
