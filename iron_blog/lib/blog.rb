require 'colorize'

class Blog
	def initialize
 		@posts = []
 		@current_page = 1
	end

	def add_post(single_post)
		@posts.push(single_post)
	end

	def next_page
		if !last_page?
			@current_page += 1
		end
		publish_front_page
	end

	def previous_page
		if @current_page != 1
			@current_page -= 1
		end
		publish_front_page
	end

	def publish_front_page
		first_post = (@current_page - 1) * 3
		last_post = (first_post + 3) - 1 
		current_posts = @posts[first_post..last_post]
		# Page 1: 0..2
		# Page 2: 3..5
		# Page 3: 6..8
		system "clear" or system "cls"
		current_posts.each do | post |
			post.display
		end

		pagination_section
	end

	def pagination_section
		pagination = ""
		(1..last_page).each do | page | 
			if page == @current_page
				pagination += "[#{page}] ".red
			else
				pagination += "#{page} "
			end
		end
		puts pagination
	end

	def last_page
		(@posts.length / 3.0).ceil
	end

	def last_page?
		@current_page == last_page 
	end
end