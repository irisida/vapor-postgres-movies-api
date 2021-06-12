//
//  File.swift
//  
//
//  Created by ed on 09/06/2021.
//

import Foundation
import Vapor


final class MoviesController {
    
    func create(_ req: Request) throws -> EventLoopFuture<Movie> {
        let movie = try req.content.decode(Movie.self)
        return movie.create(on: req.db).map { movie }
    }
    
    func delete(_ req: Request) throws -> EventLoopFuture<HTTPStatus> {
        Movie.find(req.parameters.get("movieId"), on: req.db).unwrap(or: Abort(.notFound))
            .flatMap {
                $0.delete(on: req.db)
            }.transform(to: .ok)
    }
    
    func all(_ req: Request) throws -> EventLoopFuture<[Movie]> {
        Movie.query(on: req.db).all()
    }
}
