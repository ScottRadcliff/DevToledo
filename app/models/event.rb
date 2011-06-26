class Event < ActiveRecord::Base
  belongs_to :user

  def self.next
    event = Event.where("date > ?", Date.today).limit(1).order(:date)
  end

end
