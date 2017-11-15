class Gift < ApplicationRecord
  has_many :swaps
  has_many :users, through: :swaps
  has_many :events, through: :swaps

  def self.categories
    @etsy
  end

end

  # winter's attempt at the categories (we have some options with categories...let's discuss):
  #
  # def categories
  #   categories =[]
  #   @listings_array.each do |listing|
  #     tax_path = listing[:taxonomy_path]
  #     categories << tax_path[0]
  #   end
  #   categories
  # end

  # the gift item price in the api is currently a string. we need to make it a float for the search params
  #
  # def price
  #   self[:price].to_f
  # end
