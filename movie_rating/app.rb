require "imdb"
require_relative "lib/grid_maker.rb"

movie_titles = IO.readlines("list_of_movies.txt")

p movie_titles
movies = movie_titles.map do | title | 
	search = Imdb::Search.new(title)
	if search.movies[0].rating
		search.movies[0]
	else
		search.movies[1]
	end
	# search.movies[0].rating ? search.movies[0] : search.movies[1]
end

my_grid = GridMaker.new(movies)
my_grid.make_chart