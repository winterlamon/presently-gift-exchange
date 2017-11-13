class User < ApplicationRecord
  has_secure_password
  has_many :user_events
  has_many :events, through: :user_events
  has_many :swaps
  has_many :gifts, through: :swaps
end
