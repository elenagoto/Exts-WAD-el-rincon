# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @posts = Post.most_recent
    @featured = Post.last
  end
end
