class ProjectsController < ApplicationController
  
  def index
  	
  end

  def new
  	@project = Project.new
  end

  def show
  	@project = Project.find(params[:id])
  end

  def create
  	@project = Project.new(params[project_params])

  	if @project.save
  		flash[:notice] = "Project has been created."
  		redirect_to @project

  	else
  		#nothing here
  	end
  end

  private

  def project_params
  	params.require(:project).permit(:name, :description)
  end
end
