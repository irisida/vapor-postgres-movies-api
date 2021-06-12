//
//  File.swift
//  
//
//  Created by ed on 09/06/2021.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateActor: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("actors")
            .id()
            .field("name", .string)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("actors").delete()
    }
}
