//
//  File.swift
//  
//
//  Created by ed on 09/06/2021.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct AddPosterColumnToMovies: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movies")
            .field("poster", .string)
            .update()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movies")
            .deleteField("poster")
            .delete()
    }
}
