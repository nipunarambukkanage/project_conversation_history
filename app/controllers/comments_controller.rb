class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @project
    else
      render "projects/show"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.project
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
