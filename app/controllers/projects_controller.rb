class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      @project.set_project_attributes
      render json: @project
    else
      render json: @project.errors, status: unprocessable_entity
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :link, :leak_date)
  end
end
