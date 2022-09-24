//
//  MovieDataManager.swift
//  NavigationApp
//
//  Created by Ivan Nieto on 03/09/22.
//

import Foundation

class MovieDataManager {
    private var movies: [Movie] = []
    
    func fetch(genre: String) -> [Movie] {
        if let file = Bundle.main.url(forResource: "movies", withExtension: "json") {
            do {
                let data = try Data(contentsOf: file)
                let decodedMovies = try JSONDecoder().decode([Movie].self, from: data)
                movies = decodedMovies.filter({$0.genres.contains(genre)})
            } catch {
                print("Error", error)
            }
        }
        return movies
    }
    
    func getFavorites() -> [Movie] {
        let movies = ["Ex Machina", "Hellboy II", "Inception", "Pacific Rim", "Requiem For A Dream"]
        let formattedMovies = movies.map { (title) -> Movie in
            return Movie.init(id: 1, title: title, year: "", runtime: "", genres: [""], director: "", actors: "", plot: "", posterUrl: "")
        }
        return formattedMovies
    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movieAt(index: Int) -> Movie {
        return movies[index]
    }
    
    func movieValue(index: Int) -> String {
        return movies[index].title
    }
}
