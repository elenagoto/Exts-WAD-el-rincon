class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    return @current_user ||= User.find(session[:user_id])
  end
end
