class Project < ApplicationRecord
	def expired?
		pledging_ends_on.strftime("%Y-%m-%d") < Time.now.strftime("%Y-%m-%d")
			
	end

	def self.ordered
		where("pledging_ends_on > ?", Date.today).order("pledging_ends_on asc") 
	end
end
