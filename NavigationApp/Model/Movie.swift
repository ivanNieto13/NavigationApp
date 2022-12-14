//
//  File.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 03/09/22.
//

import Foundation

struct Movie: Decodable {    
    let id: Int
    let title: String
    let year: String
    let runtime: String
    let genres: [String]
    let director: String
    let actors: String
    let plot: String
    let posterUrl: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case year
        case runtime
        case genres
        case director
        case actors
        case plot
        case posterUrl = "poster_url"
    }
    
    func valueByPropertyName(name:String) -> Any {
            switch name {
            case "title": return title
            case "year": return year
            case "runtime": return runtime
            case "genres": return formatGenres()
            case "director": return director
            case "actors": return actors
            case "plot": return plot
            default: fatalError("Wrong property name")
            }
    }
    
    func formatGenres() -> String {
        return genres.joined(separator: ", ")
    }
}
