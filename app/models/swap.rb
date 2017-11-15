class Swap < ApplicationRecord
  belongs_to :event
  belongs_to :giver, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :gift
  validate :validate_uniqueness

  def validate_uniqueness
    if :receiver_id != :giver_id
      true
    end
  end

  def giver
    self.giver_id
  end

  def receiver
    self.receiver_id
  end

  # def self.empty_swaps(count)
  #   swap_array = []
  #   count.times do
  #     swap_array << Swap.new
  #   end
  #   swap_array
  # end




end
