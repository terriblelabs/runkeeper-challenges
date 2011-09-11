class SessionsController < ApplicationController
  def create
    code = params[:code]

    token = BabyTooth.get_token(code)
    session[:token] = token

    redirect_to root_path
  end

  def destroy
    session[:token] = nil
    redirect_to root_path
  end
end