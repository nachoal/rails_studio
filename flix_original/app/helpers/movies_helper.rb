module MoviesHelper
		#def date_difference(movie)
		# @today = Date.today.strftime("%Y")
		# @movie_release = movie.released_on.strftime("%Y")
		# @difference = ((@today.to_i - @movie_release.to_i) /1).floor
		# @difference_in_years = @difference
		# time_ago_in_words(@difference_in_years.years.ago)

	def format_total_gross(movie)
			#the definition of what it means to be a flop, hence this is not the concern of a view, rather it corresponds to the corresponding Model class logic (business logic)
		if movie.flop?
			content_tag(:strong,"Flop!")
		else
		number_to_currency(movie.total_gross)
		end
	end

	def image_for(movie)
		if movie.image_file_name.blank?
			image_tag("placeholder.jpg", width: "100px")
		else
			image_tag(movie.image_file_name, width: "100px")
		end 
	end
end
