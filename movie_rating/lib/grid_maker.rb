class GridMaker
	def initialize(movies)
		@movies = movies
		@grid = ""
	end

	def make_chart
		create_grid
		create_labels
		create_legend
		puts @grid
	end

	private 

	def create_grid
		10.downto(1).each do | i |
			@movies.each do | movie | 
				if movie.rating >= i 
					@grid += " X |" 
				else
					@grid += "   |"
				end
			end
			@grid += "\n"
		end
	end

	def create_labels
		@grid += ("-" * 4) * @movies.length
		@grid += "\n"
		@movies.each_with_index do | movie, index |
			@grid += " #{index + 1} |"
		end
		@grid
	end

	def create_legend
		@movies.each_with_index do | movie, index |
			@grid += "\n#{index + 1}. #{movie.title} #{movie.rating}"
		end
	end

end