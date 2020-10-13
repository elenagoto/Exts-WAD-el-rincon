# frozen_string_literal: true

class PostsController < ApplicationController
  # Before Actions
  before_action :set_post,       only: %i[show edit update destroy]

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    elsif params[:q]
      @search_term = params[:q]
      @posts = Post.search(@search_term)
    else
      @posts = Post.all
    end
  end

  def show; end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
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

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :preview_text, :image_url, :spotify_code, :tag_list, :tag, { tag_ids: []}, :tag_ids)
  end
end
