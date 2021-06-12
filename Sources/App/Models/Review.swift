//
//  File.swift
//  
//
//  Created by ed on 09/06/2021.
//

import Foundation
import Vapor
import Fluent
import FluentPostgresDriver

final class Review: Model, Content {
    
    static let schema = "reviews"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    @Field(key: "body")
    var body: String
    
    @Parent(key: "movie_id") // FK
    var movie: Movie
    
    // inits
    init() {}
    init(id: UUID? = nil, title: String, body: String, movieId: UUID) {
        self.id = id
        self.title = title
        self.body = body
        self.$movie.id = movieId
    }
}
