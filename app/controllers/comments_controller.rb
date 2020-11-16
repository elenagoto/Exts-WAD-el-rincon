class CommentsController < ApplicationController
  # Includes
  include RolesHelper

  # Before Actions
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
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    logger.info("Comment:  #{@comment}")

    if can_delete_comment?(@comment)
      @comment.destroy!
    end

    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
