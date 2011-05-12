require 'spec_helper'

describe EventsController do
 

  it "#index" do
    get :index
    events = assigns(:event_strips)
    events.should_not be_nil
  end

  it "should show the current month by default" do
    pending 
  end

  it "should show a list of this months events" do
    get :index
    assigns(:this_months_events).should_not be_nil
  end


end
