class ProjectsController < ApplicationController
	def index
		@projects = Project.ordered
	end

	def show
		@project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update(project_params)
		redirect_to project_path(@project)
	end

	def new
		@project = Project.new
	end

	def create			
		@project = Project.new(project_params)

		@project.save
		redirect_to project_path(@project)
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path
	end
end


private 
	def project_params
		params.require(:project).
			permit(:name, :description, :target_pledge_amount, :website, :pledging_ends_on, :team_members, :image_file_name)
	end