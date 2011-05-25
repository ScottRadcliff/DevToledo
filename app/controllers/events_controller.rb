class EventsController < ApplicationController

  def index
  
    @month = (params[:month] || Time.zone.now.month).to_i
    @year = (params[:year] || Time.zone.now.year).to_i

    @shown_month = Date.civil(@year, @month)
   
    # TODO
    # This block may need to be removed if not needed to  access individual events
    # 
    #start_d, end_d = Event.get_start_and_end_dates(@shown_month) # optionally pass in @first_day_of_week
    #@events = Event.events_for_date_range(start_d, end_d)
    #@event_strips = Event.create_event_strips(start_d, end_d, @events)
    
    @event_strips = Event.event_strips_for_month(@shown_month)
    @next_five_events = Event.next_five_events
  end

  def new
    @event = Event.new
  end
  
  def create
   @event = Event.new(params[:event]) 
   if @event.save
     redirect_to events_path, :notice => "Event created"
   else
     render :new
   end 
  end


end
