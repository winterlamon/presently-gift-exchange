class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  has_many :swaps
  has_many :gifts, through: :swaps

  def my_receiver # How to get receiver_id name?
    self.swaps.receiver_id
  end

end
