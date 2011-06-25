class Event < ActiveRecord::Base

  def self.next
    event = Event.where("date > ?", Date.today).limit(1).order(:date)
  end

end
