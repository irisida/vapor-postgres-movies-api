//
//  ReviewsController.swift
//  
//
//  Created by ed on 11/06/2021.
//

import Foundation
import Fluent
import Vapor

final class ReviewsController {
    
    func create(_ req: Request) throws -> EventLoopFuture<Review> {
        let review = try req.content.decode(Review.self)
        return review.save(on: req.db).map { review }
    }
    
    func getByMovieId(_ req: Request) throws -> EventLoopFuture<[Review]> {
        guard let movieId = req.parameters.get("movieId", as: UUID.self) else {
            throw Abort(.notFound)
        }
        
        return Review.query(on: req.db).filter(\.$movie.$id, .equal, movieId)
            .with(\.$movie)
            .all()
    }
}
