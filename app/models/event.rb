class Event < ActiveRecord::Base
  has_event_calendar
  validate :end_date_is_after_start_date

  def self.next_five_events
    @events = Event.where("start_at > ?", Date.today.midnight).limit(5)
  end

  # Validation Callback for dates
  def end_date_is_after_start_date
    if start_at > end_at
      errors.add(:end_at, "cannot be before the start date")
    end
  end
end
