class BookmarksController < ApplicationController
  before_action :ensure_authenticated

  def create
    post = Post.find_by_id(params[:post_id])
    logger.info("This is the post: #{post.title}")
    current_user.bookmarked_posts << post
    redirect_to root_path
  end

  def destroy
    post = Post.find_by_id(params[:id])
    logger.info("This is the post: #{params[:id]}")
    logger.info("This is the post: #{post.title}")
    current_user.bookmarked_posts.delete(post)
    redirect_to root_path
  end
end
