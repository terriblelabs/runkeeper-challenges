class ChallengesController < ApplicationController
  before_filter :authenticate!

  def index
    #@challenges = current_user.challenges
  end

end
