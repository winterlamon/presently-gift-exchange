class UserEventsController < ApplicationController
  def show
    redirect_to event_path(@event)
  end

  def create
    @user_event = UserEvent.new(user_events_params)
    if @user_event.save
      redirect_to params[:user_events][:path_name]
    else
      render :new
  end
end


  private

  def user_events_params
    params.require(:user_events).permit(:event_id, :user_id)
  end
end
