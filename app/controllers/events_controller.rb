class EventsController < ApplicationController

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def create
    @user = User.find(params[:user_id])
    @event = @user.events.create(event_params)
    redirect_to join_event_path(@event)
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @user = User.find(params[:user_id])
    @event = @user.events.find(params[:id])
    @event.destroy
    redirect_to user_path(@user)
  end

  def join
    @event = Event.find(params[:id])
    @attending_event = current_user.attending_events.new(event: @event)
    if @attending_event.save
      redirect_to events_all_path
    else
      redirect_to events_all_path

    end
  end

  def all
  end

  def events
  end

  private
  def event_params
    params.require(:event).permit(:title, :date, :time, :location, :url, :description,)
  end


end




