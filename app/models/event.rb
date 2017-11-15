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

  # def receivers
  #   @receiver = self.user.shuffle!
  # end
  #
  # def givers
  #   @giver = self.user
  # end

  # def generate_swap
  #   pairs = (self.users.map{|x| x.id}).zip(self.users.shuffle.map{|x| x.id})
  #   pairs.each do |pair|
  #   if pair[0] != pair[1]
  #    Swap.create(giver_id: pair[0], receiver_id: pair[1], gift_id: nil, event_id: self.id)
  #  else
  #   end
  #
  # end

#   def generate_pairs
#     givers = self.users
#     receivers = self.users
#     answer = {}
#     until answer.keys.count == givers.length && !answer.values.include?(nil)
#       givers.each do |giver|
#           receiver = receivers.sample
#         unless receiver == giver
#         answer[giver] = receiver
#         receivers.delete(receiver)
#       end
#     end
#   end
#   answer
# end

def generate_pairs
  peeps = self.users.shuffle
  holder = {}
  peeps.each_with_index {|person, index|
    holder[person] = peeps[index+1]}
    holder[holder.keys.last] = peeps[0]
    holder
end

def generate_swap
  pairs = generate_pairs
  pairs.each do |giver, receiver|
    Swap.new(giver: giver, receiver: receiver, gift_id: nil, event_id: self)
  end
  "Swaps created! Check you dashboard to see who you'll be giving a gift to!"
end

end
