class HomeController < ApplicationController
  def index
  end

  def callback
    code = params[:code]

    token = BabyTooth.get_token(code)
    session[:token] = token
    user = BabyTooth::User.new(token)

    render :text => user.profile.body.inspect
  end
end