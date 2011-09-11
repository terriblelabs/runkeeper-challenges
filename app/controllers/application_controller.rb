class ApplicationController < ActionController::Base
  protect_from_forgery

  def signed_in?
    session[:token].present?
  end
  helper_method :signed_in?

  def current_user
    @current_user ||= BabyTooth::User.new(session[:token])
  end
  helper_method :current_user

  def authenticate!
    redirect_to root_path and return unless signed_in?
  end

end
