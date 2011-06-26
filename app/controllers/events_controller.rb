class EventsController < ApplicationController
before_filter :authenticate_user!

  def new
    @event = Event.new 
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      redirect_to event_path(@event), :notice => "Event successfully created"
    else
      redirect_to new_event_path, :error => "There was an error creating your event."
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
   @event = Event.find(params[:id]) 
  end

  def update
    @event = Event.update(params[:id], params[:event])
    if @event.save
      redirect_to event_path(@event), :notice => "Event updated"
    end
  end
end
