//
//  File.swift
//  
//
//  Created by ed on 10/06/2021.
//

import Foundation

///// POST on /movies/:movieId/actor/:actorId
//app.post("movies", ":movieId", "actors", ":actorId") { req -> EventLoopFuture<HTTPStatus> in
//    let movie = Movie.find(req.parameters.get("movieId"), on: req.db)
//        .unwrap(or: Abort(.notFound))
//
//    let actor = Actor.find(req.parameters.get("actorId"), on: req.db)
//        .unwrap(or: Abort(.notFound))
//
//    return movie.and(actor).flatMap { (movie, actor) in
//        movie.$actors.attach(actor, on: req.db)
//    }.transform(to: .ok)
//}
//
///// GET on /actors
//app.get("actors") { req  in
//    Actor.query(on: req.db).with(\.$movies).all()
//}
//
///// POST on /actors
//app.post("actors") { req -> EventLoopFuture<Actor> in
//    let actor = try req.content.decode(Actor.self)
//    return actor.create(on: req.db).map { actor }
//}
//
//
///// GET on /movies
//app.get("movies") { req in
//    Movie.query(on: req.db)
//        .with(\.$actors)
//        .with(\.$reviews).all()
//}
//
//
///// POST on /movies
//app.post("movies") { req  -> EventLoopFuture<Movie> in
//    let movie = try req.content.decode(Movie.self)
//    return movie.create(on: req.db).map { movie }
//}
//
//
///// GET on /movies/:movieId
//app.get("movies", ":movieId") { req -> EventLoopFuture in
//    Movie.find(req.parameters.get("movieId"), on: req.db)
//        .unwrap(or: Abort(.notFound))
//}
//
//
///// PUT on /movies
//app.put("movies") { req -> EventLoopFuture<HTTPStatus> in
//    let movie = try req.content.decode(Movie.self)
//    return Movie.find(movie.id, on: req.db)
//        .unwrap(or: Abort(.notFound))
//        .flatMap {
//            $0.title = movie.title
//            return $0.update(on: req.db).transform(to: .ok)
//        }
//}
//
//
///// DELETE on /movies
//app.delete("movies", ":movieId") { req -> EventLoopFuture<HTTPStatus> in
//    Movie.find(req.parameters.get("movieId"), on: req.db)
//        .unwrap(or: Abort(.notFound))
//        .flatMap {
//            $0.delete(on: req.db)
//        }.transform(to: .ok)
//}
//
//
///// POST on /Reviews
//app.post("reviews") { req -> EventLoopFuture<Review> in
//    let review = try req.content.decode(Review.self)
//    return review.create(on: req.db).map {
//        review
//    }
}
