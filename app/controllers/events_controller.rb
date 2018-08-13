class EventsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @event = @user.events.create(event_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @event = @user.events.find(params[:id])
    @event.destroy
    redirect_to user_path(@user)
  end

  private
  def event_params
    params.require(:event).permit(:title, :date, :time, :location, :url, :description)
  end
end
