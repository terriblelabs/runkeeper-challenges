class Challenge < ActiveRecord::Base
  validates :start_on, :end_on, :challenger_token, :goal, :reward, :challengee_email, :email_token, :presence => true

  attr_accessible :start_on, :end_on, :goal, :reward, :challengee_email, :challengee_name, :taunt

  before_validation :generate_email_token, :on => :create


  def to_param
    self.email_token
  end

  def accepted?
    self.challengee_token.present?
  end

  def accept(token)
    return if token.nil?
    return if accepted?
    return if token == self.challenger_token

    self.update_attribute :challengee_token, token
  end

  private

  def generate_email_token
    self.email_token ||= SecureRandom.hex(16)
  end
end
