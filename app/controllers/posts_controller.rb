# frozen_string_literal: true

class PostsController < ApplicationController
  # Includes
  include RolesHelper

  # Before Actions
  before_action :ensure_authenticated,   only: [:new, :create, :edit, :update, :destroy] 
  before_action :set_post,               only: %i[show edit update destroy]
  before_action :authorize_to_create_post, only: %i[new create]
  before_action :authorize_to_edit_post, only: %i[edit update destroy]
  before_action :ensure_admin,           only: %i[all_posts]

  def index
    if params[:name]
      @posts = Post.tagged_with(params[:name]).order(created_at: :desc)
    elsif params[:q]
      @search_term = params[:q]
      results = Post.search(@search_term)
      @posts = results.sort_by(&:created_at).reverse
    elsif params[:username]
      author = User.find_by(username: params[:username])
      @posts = author.posts.order(created_at: :desc)
    else
      @posts = Post.all.order(created_at: :desc)
    end
  end

  def show
    logger.info("Truncated text: '#{@post.body.truncate(160)}'")
  end

  def new
    @post = Post.new
  end

  def create
    user = current_user
    @post = Post.new(post_params)
    @post.user = user
    if @post.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  def all_posts
    @posts = Post.all.order(updated_at: :desc)
    @tags = Tag.all.order(:name)
    @tag = Tag.new
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def authorize_to_edit_post
    redirect_to root_path unless can_edit_post?(@post)
  end

  def authorize_to_create_post
    redirect_to root_path unless author? || admin?
  end
  
  def post_params
    params.require(:post).permit(:title, :body, :preview_text, :image_url, :spotify_code, :tag_list, :tag, { tag_ids: []}, :tag_ids)
  end
end
