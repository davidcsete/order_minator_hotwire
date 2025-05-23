class ApplicationController < ActionController::Base
  # layout :determine_layout

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    attributes = [:first_name, :last_name]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

  def determine_layout
    return false if turbo_frame_request?
    :application
  end
end
