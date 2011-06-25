require 'spec_helper'

describe Event do
  it "returns the next event" do
    event = Factory.create(:event, :date => Date.today + 6.months)
    event2 = Factory.create(:event, { :title => "Event 2", :date => (Date.today + 2.days) })
    next_event = Event.next
    next_event[0].title.should == "Event 2"
  end

  it "should create an event" do 
    event = Factory.create(:event)
    event.should be_valid
  end
end
