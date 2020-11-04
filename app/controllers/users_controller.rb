class UsersController < ApplicationController

  def index
  
  end

  def show
  
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  
  end

  def update
  
  end

  def destroy
  
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def edit_user_params
    params.require(:user).permit(:email, :name, :role, :username)
  end
end
