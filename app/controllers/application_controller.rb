class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user_token
    session[:token]
  end

  def signed_in?
    current_user_token.present?
  end
  helper_method :signed_in?

  def current_user
    @current_user ||= BabyTooth::User.new(current_user_token)
  end
  helper_method :current_user

  def authenticate!
    redirect_to root_path and return unless signed_in?
  end

end
