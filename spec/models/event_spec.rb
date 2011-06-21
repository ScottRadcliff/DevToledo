require 'spec_helper'

describe Event do
  it "returns the next event" do
    event1 = Event.create!(:title => "Event 1", :body => "Body 1", :date => Date.today + 6.months)
    event2 = Event.create!(:title => "Event 2", :body => "Body 2", :date => Date.today + 1.day)

    next_event = Event.next
    p next_event
    next_event[0].title.should == "Event 2"
  end
end
