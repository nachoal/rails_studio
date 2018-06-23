class Movie < ApplicationRecord
	def flop?
		# if total_gross < 50000000
		# 	true
		# else
		# 	false 
		# end
		total_gross.blank? || total_gross < 50000000

	end
end
