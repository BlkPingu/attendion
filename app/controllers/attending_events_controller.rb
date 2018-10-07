class AttendingEventsController < ApplicationController

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def join
    AttendingEvent.new(user_id: current_user.id, event_id: params[:event_id])
  end

  def destroy
    AttendingEvent.delete_all(event_id: params(:event_id))
  end


  def destroy
    @user = User.find(params[:user_id])
    @attendingEvent = @user.attending_events.find(params[:id])
    @attendingEvent.destroy

    redirect_to user_path(@user)
  end
end