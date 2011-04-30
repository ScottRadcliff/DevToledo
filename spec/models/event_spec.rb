require 'spec_helper'

describe Event do

  it "should not save an event without a title" do
    Event.new.should have(1).errors_on(:title) 
  end


end
