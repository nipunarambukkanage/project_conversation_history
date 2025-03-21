class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @comments = @project.comments.page(params[:page]).per(10)
    @status_changes = @project.status_changes.page(params[:page]).per(10)
  end
  
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      render "new"
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :status)
  end
end
