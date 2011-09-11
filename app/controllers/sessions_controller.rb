class SessionsController < ApplicationController
  def create
    code = params[:code]

    token = BabyTooth.get_token(code)
    session[:token] = token

    if params[:state].present?
      challenge = Challenge.find_by_email_token(params[:state])
      redirect_to challenge
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:token] = nil
    redirect_to root_path
  end
end