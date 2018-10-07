class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale

  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :aboutme, :password, :password_confirmation, :avatar, :current_password])
  end

  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options

  end
end
