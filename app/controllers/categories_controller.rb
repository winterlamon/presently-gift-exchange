class CategoriesController < ApplicationController

  def index
    get_all_etsy_listings
  end


end
