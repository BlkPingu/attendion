# frozen_string_literal: true

# Join Events and Users with each other
class AttendingEventsController < ApplicationController
  before_action :authenticate_user!

  def join
    AttendingEvent.new(user_id: current_user.id, event_id: params[:event_id])
  end

  def destroy
    @user = User.find(params[:user_id])
    @attendingEvent = @user.attending_events.find(params[:id])
    @attendingEvent.destroy
    redirect_to user_path(@user)
  end
end