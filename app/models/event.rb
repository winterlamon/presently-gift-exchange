class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  has_many :swaps
  has_many :gifts, through: :swaps

  # def receivers
  #   @receiver = self.user.shuffle!
  # end
  #
  # def givers
  #   @giver = self.user
  # end

  def generate_swap
    pairs = (self.users.map{|x| x.id}).zip(self.users.shuffle.map{|x| x.id})
    pairs.each do |pair|
    if pair[0] != pair[1]
     Swap.create(giver_id: pair[0], receiver_id: pair[1], gift_id: nil, event_id: self.id)
   else
    end

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

  # def generate_swap
  #   givers.each do |give|
  #     receivers.each do |rece|
  #       Swap.create(giver_id: give.id, receiver_id: rece.id, gift_id: nil, event_id: self.id)
  #     end
  #   end
  # end

end
