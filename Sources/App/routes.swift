import Fluent
import Vapor

func routes(_ app: Application) throws {
    
    let moviesController = MoviesController()
    let reviewsController = ReviewsController()
    
    
    // movies
    app.post("movies", use: moviesController.create)
    
    app.delete("movies", ":movieId", use: moviesController.delete)
        
    app.get("movies", use: moviesController.all)
    
    
    // reviews
    app.post("reviews", use: reviewsController.create)
    
    // reviews by movie Id
    app.get("movies", ":movieId", "reviews", use: reviewsController.getByMovieId)
}
