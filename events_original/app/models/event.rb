class Event < ApplicationRecord
	def free?
		#we don't have to call self because it is an instance method
		#self.price == 0
		price.blank? || price.zero?
	end

	#classs level method we don't have to say Event.where the event class object is the implicit receiver
	def self.upcoming
		where('starts_at >=?', Time.now).order("starts_at")
	end
end
