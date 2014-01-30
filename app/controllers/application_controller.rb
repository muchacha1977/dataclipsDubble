class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(user)
    #help_path
    db_connections_path
  end

  def after_sign_in_path_for(user)
    db_connections_path
  end

  def after_sign_out_path_for(user)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :terms_and_conditions
  end

end
