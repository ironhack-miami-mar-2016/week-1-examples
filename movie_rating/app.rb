require "imdb"

movies = [ "The Godfather", "Looper" ]

search = Imdb::Search.new(movies[0])
the_movie = search.movies[0]

puts the_movie.title
puts the_movie.rating
puts "the_movie's class is #{the_movie.class}"

puts "\n-----------------------\n"

search = Imdb::Search.new(movies[1])
the_movie = search.movies[0]

puts the_movie.title
puts the_movie.rating
