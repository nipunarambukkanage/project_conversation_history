class StatusChangesController < ApplicationController
  before_action :authenticate_user!

def create
  @project = Project.find(params[:project_id])
  @status_change = @project.status_changes.build(status_change_params)
  @status_change.user = current_user

  if @status_change.save
    redirect_to @project
  else
    @comments = @project.comments.page(params[:page]).per(10) # Kaminari syntax
    @status_changes = @project.status_changes.page(params[:page]).per(10)
    render "projects/show"
  end
end

  private

  def status_change_params
    params.require(:status_change).permit(:previous_status, :new_status)
  end
end
