class EventsController < ApplicationController

  def new
    @event = Event.new 
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to new_event_path, :notice => "Event successfully created"
    else
      redirect_to new_event_path, :error => "There was an error creating your event."
    end
  end

  def show
    @event = Event.find(params[:id])
  end


end
