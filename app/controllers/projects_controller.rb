class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create
    byebug
    @project = Project.new(project_params)

    if @project.save
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
