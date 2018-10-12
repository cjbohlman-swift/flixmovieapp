//
//  Movie.swift
//  flixster
//
//  Created by Mely Bohlman on 10/11/18.
//  Copyright © 2018 Chris Bohlman. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterUrl: URL?
    var backdropUrl: URL?
    var releaseDate: String?
    var overview: String?
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        
        let baseURLString = "https://image.tmdb.org/t/p/w500"
        let posterPathString = dictionary["poster_path"] as? String ?? ""
        posterUrl = URL(string: baseURLString + posterPathString)!
        let backdropPathString = dictionary["backdrop_path"] as? String ?? ""
        backdropUrl = URL(string: baseURLString + backdropPathString)!
        
        releaseDate = dictionary["release_date"] as? String ?? ""
        overview = dictionary["overview"] as? String ?? ""
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}
