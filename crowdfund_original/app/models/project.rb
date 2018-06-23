class Project < ApplicationRecord
	def expired?
		pledging_ends_on.strftime("%Y-%m-%d") < Time.now.strftime("%Y-%m-%d")
			
	end
end
