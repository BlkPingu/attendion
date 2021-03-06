# frozen_string_literal: true

# General Controller for every other Controller to Inherit from
class ApplicationController < ActionController::Base
  # Application Controller
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?



  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: %i[name
                                               email
                                               aboutme
                                               password
                                               password_confirmation
                                               avatar
                                               current_password])
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
end
