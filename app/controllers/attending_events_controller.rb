class AttendingEventsController < ApplicationController

  def create
    @attendingEvents = AttendingEvent.new(user_id: User.find(params[:user_id]), event_id: Event.find(params[:event_id]))
  end

end