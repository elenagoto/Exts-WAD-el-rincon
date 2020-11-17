class ApplicationController < ActionController::Base
  include RolesHelper

  protect_from_forgery with: :exception
  before_action :set_locale

  helper_method :logged_in?, :current_user, :admin?, :author?

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
    redirect_to root_path unless admin?
  end

  # Locale methods
  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
