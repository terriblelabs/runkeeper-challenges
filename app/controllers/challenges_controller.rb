class ChallengesController < ApplicationController
  before_filter :authenticate!, :only => [:index, :new]

  def index
    @challenges_for_me = Challenge.find_all_by_challengee_token(current_user_token)
    @challenges_by_me = Challenge.find_all_by_challenger_token(current_user_token)
  end

  def new
    @challenge = Challenge.new(:start_on => Date.tomorrow, :end_on => 1.week.from_now)
  end

  def create
    @challenge = Challenge.new(params[:challenge])
    @challenge.challenger_token = current_user_token

    if @challenge.save
      Mailer.challenge_notification(@challenge).deliver
      redirect_to @challenge
    else
      render :action => 'new'
    end
  end

  def show
    @challenge = Challenge.find_by_email_token(params[:id])
    @challenge.accept(current_user_token) if @challenge
  end
end
