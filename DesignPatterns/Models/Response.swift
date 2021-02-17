// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let response = try? newJSONDecoder().decode(Response.self, from: jsonData)

import Foundation

struct Response: Codable {
    let data: ResponseData
}

struct ResponseData: Codable {
    let children: [Child]
}

struct Child: Codable {
    let data: Post
}

struct Post: Codable {
    let selftext: String
    let title: String
}
