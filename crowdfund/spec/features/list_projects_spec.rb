require 'rails_helper'

describe "Viewing the list of projects" do 
	it "shows three project names" do
		visit "http://example.com/projects"

		expect(page).to have_text("3 Projects")
		expect(page).to have_text("Project 1")
		expect(page).to have_text("Project 2")
		expect(page).to have_text("Project 3")





	end
end