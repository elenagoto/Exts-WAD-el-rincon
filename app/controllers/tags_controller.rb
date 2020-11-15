class TagsController < ApplicationController
  def create
    @tag = Tag.new(tag_params)
    @tag.save
    redirect_to all_posts_path
  end

  def destroy
    tag = Tag.find(params[:id])
    tag.destroy!
    redirect_to all_posts_path
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
