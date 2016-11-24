class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    new_post_path
  end

  def after_sign_out_path_for(resource_or_scope)
    posts_path
  end 

  protected

  #configure permitted parameters for devise
  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation, :remember_me, :avatar, :avatar, :avatar_cache]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end
end