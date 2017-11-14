class SwapsController < ApplicationController

  def create
    @swap = Swap.new(swap_params)
    if @swap.save
      redirect_to user_dashboard_path
    else
      render :new
  end
end


end
