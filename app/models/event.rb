class Event < ActiveRecord::Base
  has_event_calendar

  def self.next_five_events
    @events = Event.where("start_at > ?", Date.today.midnight).limit(5)
  end
end
