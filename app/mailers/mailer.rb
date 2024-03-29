class Mailer < ActionMailer::Base
  default from: "noreply@terriblelabs.com"

  def challenge_notification(challenge)
    @url = challenge_url(challenge, :host => 'rk-challenges.herokuapp.com')
    mail(:to => challenge.challengee_email, :subject => "You've been challenged!")
  end

end
