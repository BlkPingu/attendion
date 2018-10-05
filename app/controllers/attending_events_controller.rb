class AttendingEventsController < ApplicationController



  def join
    AttendingEvent.new(user_id: current_user.id, event_id: params[:event_id])
  end

end