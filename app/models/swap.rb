class Swap < ApplicationRecord
  belongs_to :event
  belongs_to :giver, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :gift

  def givers
    self.event.users.shuffle!
  end

  def receivers
    self.event.users.shuffle!
  end

  def self.empty_swaps(count)
    swap_array = []
    count.times do
      swap_array << Swap.new
    end
    swap_array
  end



  def self.generate_swap
    while receivers.length > 0
      if receivers.last != givers.first
        receivers.pop.giver_id = givers.shift.id
      elsif receivers.last != givers.last
        receivers.pop.giver_id = givers.pop.id
      end
    end
  end
end

givers = [{id: 1, name: "winter", receiver_id: nil},
          {id: 2, name: "brian", receiver_id: nil},
          {id: 3, name: "elisa", receiver_id: nil},
          {id: 4, name: "tim", receiver_id: nil},
          {id: 5, name: "steven", receiver_id: nil}]

receivers = [{id: 1, name: "winter", receiver_id: nil},
          {id: 2, name: "brian", receiver_id: nil},
          {id: 3, name: "elisa", receiver_id: nil},
          {id: 4, name: "tim", receiver_id: nil},
          {id: 5, name: "steven", receiver_id: nil}]
