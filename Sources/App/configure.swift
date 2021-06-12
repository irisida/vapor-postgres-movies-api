//Sample ****
//app.databases.use(.postgres(
//    hostname: Environment.get("DATABASE_HOST") ?? "localhost",
//    port: Environment.get("DATABASE_PORT").flatMap(Int.init(_:)) ?? PostgresConfiguration.ianaPortNumber,
//    username: Environment.get("DATABASE_USERNAME") ?? "postgres",
//    password: Environment.get("DATABASE_PASSWORD") ?? "",
//    database: Environment.get("DATABASE_NAME") ?? "pgvapor"
//), as: .psql)
//app.migrations.add(CreateTodo())

import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    
    app.databases.use(.postgres(hostname: "localhost",
                                username: "postgres",
                                password: "",
                                database: "pgvapor")
                      , as: .psql)
    

    // list the migratins that are required.
    app.migrations.add(CreateMovie())
    app.migrations.add(CreateReviews())
    app.migrations.add(CreateActor())
    app.migrations.add(CreateMovieActors())
    app.migrations.add(AddPosterColumnToMovies())

    // register routes
    try routes(app)
}
