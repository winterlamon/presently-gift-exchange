class Gift < ApplicationRecord
  has_many :swaps
  has_many :users, through: :swaps
  has_many :events, through: :swaps

  def self.categories
    @etsy
  end
  
end
