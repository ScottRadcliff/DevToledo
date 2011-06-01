require 'spec_helper'

describe Event do
  before(:each) do
    @e = Event.create!(:start_at => Date.today.midnight + 1.day,
                   :end_at => Date.today.midnight + 1.day,
                   :details => "Drink up")
    @e1 = Event.create!(:start_at => Date.today.midnight + 2, 
                    :end_at => Date.today.midnight + 2.day,
                    :details => "Nerd Lunch")
end

  
  it "should not save an event with an end date before the start date" do
    e = Event.new(:start_at => Date.today.midnight + 1.day, :end_at => Date.today.midnight)
    assert !e.save
  end

  it "should return the next event" do
    @event = Event.next
    @event[0]["details"].should == "Drink up"
  end
end
