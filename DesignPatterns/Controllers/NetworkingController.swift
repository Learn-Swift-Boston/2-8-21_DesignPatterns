//
//  Networking.swift
//  DesignPatterns
//
//  Created by Matt Dias on 2/16/21.
//

import Foundation

struct NetworkingController {
    static func getPosts(completion: @escaping (([Post]) -> Void)) {
        let url = URL(string: "https://reddit.com/r/swift.json")!

        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard error == nil, let data = data else {
                completion([])
                return
            }

            let response = try! JSONDecoder().decode(Response.self, from: data)
            let posts = response.data.children.compactMap { $0.data }

            completion(posts)

        }.resume()
    }
}
