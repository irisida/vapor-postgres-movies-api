//
//  File.swift
//  
//
//  Created by ed on 09/06/2021.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateMovieActors: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movie_actors")
            .id()
            .field("movie_id", .uuid, .required, .references("movies", "id"))
            .field("actor_id", .uuid, .required, .references("actors", "id"))
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movie_actors").delete()
    }
}
