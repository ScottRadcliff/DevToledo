require 'spec_helper'

describe Event do

  it "returns next five events" do
    e1 = Event.create!(:start_at => Date.today.midnight + 7.days, :end_at => Date.today.midnight + 7.days)
    e2 = Event.create!(:start_at => Date.today.midnight + 1.day, :end_at => Date.today.midnight + 1.day)
    e3 = Event.create!(:start_at => Date.today.midnight + 1.day, :end_at => Date.today.midnight + 1.day)
    e4 = Event.create!(:start_at => Date.today.midnight + 1.day, :end_at => Date.today.midnight + 1.day)
    e5 = Event.create!(:start_at => Date.today.midnight, :end_at => Date.today.midnight)
    e6 = Event.create!(:start_at => Date.today.midnight, :end_at => Date.today.midnight)
    
    events = Event.next_five_events
    events.count.should == 5
  end
  
  it "should not save an event with an end date before the start date" do
    e = Event.new(:start_at => Date.today.midnight + 1.day, :end_at => Date.today.midnight)
    assert !e.save
  end

end
