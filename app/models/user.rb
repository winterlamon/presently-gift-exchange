class User < ApplicationRecord
  has_secure_password
  has_many :user_events
  has_many :events, through: :user_events
  has_many :swaps_received, class_name: 'Swap', foreign_key: 'giver_id'
  has_many :swaps_given, class_name: 'Swap', foreign_key: 'receiver_id'
  has_many :gifts, through: :swaps
end
