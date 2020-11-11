class UsersController < ApplicationController
  # Includes
  include RolesHelper

  # Before actions
  before_action :ensure_authenticated,   only: [:index, :edit, :update, :destroy] 
  before_action :set_user,               only: [:edit, :update, :destroy]
  before_action :authorize_to_edit_user, only: [:edit, :update]
  before_action :ensure_admin,           only: [:index, :destroy]

  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    return redirect_to controller: 'users', action: 'new' unless @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def edit  
  end

  def update
    if @user.update(edit_user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.js
    end
  end

  private

  def set_user
    @user = current_user
  end

  def authorize_to_edit_user
    redirect_to account_path unless can_edit_user?(@user)
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def edit_user_params
    params.require(:user).permit(:email, :name, :role, :username)
  end

end
