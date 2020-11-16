class CommentsController < ApplicationController
  before_action :ensure_authenticated

  def create
    post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = post
    @comment.save

    redirect_to post_path(post)
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
