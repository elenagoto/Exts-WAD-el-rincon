class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email].downcase)

    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash[:alert] = t('controllers.admin.sessions.error')
      redirect_to login_path
    end
  end

  def omniauth
    @user = User.from_omniauth(auth)
    @user.save!
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end



  private

  def auth
    request.env['omniauth.auth']
  end
end
