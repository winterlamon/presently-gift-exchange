class User < ApplicationRecord
  has_secure_password
  has_many :user_events
  has_many :events, through: :user_events
  has_many :swaps_received, class_name: 'Swap', foreign_key: 'giver_id'
  has_many :swaps_given, class_name: 'Swap', foreign_key: 'receiver_id'
  has_many :gifts, through: :swaps

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_email_format_of :email, :message => 'is not a valid email.'
  validates :password_digest, length: {minimum: 8}

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  
end
