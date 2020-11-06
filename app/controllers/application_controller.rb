class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def admin?
    current_user.role == 'admin'
  end

  def author?
    current_user.role == 'author'
  end

  def ensure_authenticated
    redirect_to login_path unless logged_in?
  end

  def ensure_admin
    redirect_to account_path unless admin?
  end
end
