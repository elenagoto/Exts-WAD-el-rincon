
class Account::PostsController < ApplicationController
  before_action :ensure_authenticated
  before_action :has_posts, only: [:index]

  def index
    @posts = current_user.posts.order(updated_at: :desc).page(params[:page])
  end

  def bookmarked
    @posts = current_user.bookmarked_posts.order(updated_at: :desc).page(params[:page])
  end

  private

  def has_posts
    redirect_to account_path unless admin? || author?
  end
end
