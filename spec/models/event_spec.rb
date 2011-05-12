require 'spec_helper'

describe Event do

  it "returns next five events" do
    e1 = Event.create!(:start_at => Date.today.midnight + 7.days, :end_at => Date.today.midnight)
    e2 = Event.create!(:start_at => Date.today.midnight + 1.day, :end_at => Date.today.midnight)
    e3 = Event.create!(:start_at => Date.today.midnight + 1.day, :end_at => Date.today.midnight)
    e4 = Event.create!(:start_at => Date.today.midnight + 1.day, :end_at => Date.today.midnight)
    e5 = Event.create!(:start_at => Date.today.midnight, :end_at => Date.today.midnight)
    e6 = Event.create!(:start_at => Date.today.midnight, :end_at => Date.today.midnight)
    
    events = Event.next_five_events
    events.count.should == 5
  end

end
