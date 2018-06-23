class Event < ApplicationRecord
	def free?
		#we don't have to call self because it is an instance method
		#self.price == 0
		price.blank? || price.zero?
	end
end
