class Gift < ApplicationRecord
  has_many :swaps
  has_many :users, through: :swaps
  has_many :events, through: :swaps
  belongs_to :category

  # def self.categories
  #   @etsy
  # end

# def self.categories
#   categories =[]
#   get_all_etsy_listings.each do |listing|
#   tax_path = listing[:taxonomy_path]
#      categories << tax_path[0]
#   end
#     categories
#   end

  # the gift item price in the api is currently a string. we need to make it a float for the search params
  #
  # def price
  #   self[:price].to_f
  # end

end
