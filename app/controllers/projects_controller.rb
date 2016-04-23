class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  
  def index
  	@projects = Project.all
  end

  def show

  end

  def edit
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	if @project.save
  			redirect_to projects_path
  	else
  		#TODO Add errors
  		render :new
  	end
	end

	def update
		if @project.update(project_params)
			redirect_to projects_path
		else
			#TODO Add errors
		end
	end

	def destroy
		@project.destroy
		if @project.destroy
  			redirect_to projects_path
  	else
  		#TODO Add errors
  		render :new
  	end
	end

  private
  	def set_project
  		@project = Project.find(params[:id])
  	end

  	def project_params
  		params.require(:project).permit(:title, :description, :image_link, :link, :github_link, :priority, :technology )
  	end
end


