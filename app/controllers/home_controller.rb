class HomeController < ApplicationController
  def index
    redirect_to challenges_path and return if signed_in?
  end
end