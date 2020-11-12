class AccountController < ApplicationController
  before_action :ensure_authenticated

  def index
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    redirect_to profile_path
  end

end
