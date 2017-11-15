class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  has_many :swaps
  has_many :gifts, through: :swaps

  def receivers
    self.users
  end

  def givers
    self.users
  end

  # def generate_swap
  #   while receivers.length > 0
  #     Swap.create(giver_id: nil, receiver_id: nil, gift_id: nil, event_id: self.id)
  #     if receivers.last != givers.first
  #       receivers.pop.giver_id = givers.shift.id
  #     elsif receivers.last != givers.last
  #       receivers.pop.giver_id = givers.pop.id
  #     end
  #   end
  # end

end
