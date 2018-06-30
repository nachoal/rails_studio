module ProjectsHelper
	def time_remaining(project)
		if project.expired?
			content_tag(:strong, "Project has expired!")
		else
			today = Time.now.strftime("%Y-%m-%d")
			end_date = project.pledging_ends_on		
			distance_of_time_in_words(end_date, today)
		end
	end

	def image_for(project)
		if project.image_file_name.blank?
			image_tag("placeholder.jpg", width: "100px")
		else
			image_tag(project.image_file_name, width: "100px")
		end
	end
end
