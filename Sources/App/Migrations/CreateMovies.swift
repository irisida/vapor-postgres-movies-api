//
//  File.swift
//  
//
//  Created by ed on 08/06/2021.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateMovie: Migration {
    
    // create the movies entity
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movies")
            .id()
            .field("title", .string)
            .create()
    }
    
    // drop the movies entity
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movies")
            .delete()
    }
}
