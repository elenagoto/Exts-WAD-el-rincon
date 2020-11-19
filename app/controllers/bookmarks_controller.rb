class BookmarksController < ApplicationController
  before_action :ensure_authenticated

  def create
    @post = Post.find_by_id(params[:post_id])
    logger.info("This is the post: #{@post.title}")
    current_user.bookmarked_posts << @post

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def destroy
    @post = Post.find_by_id(params[:id])
    current_user.bookmarked_posts.delete(@post)

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end
end
