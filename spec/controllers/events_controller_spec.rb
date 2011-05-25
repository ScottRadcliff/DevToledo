require 'spec_helper'

describe EventsController do
 

  it "#index" do
    get :index
    events = assigns(:event_strips)
    events.should_not be_nil
  end

  it "#new" do
    get :new
    assert_response :success
    assigns(:event).should_not be_nil
  end

  it "#create" do
    post :create, :event => {:id => 1}
    assigns(:event).should_not be_nil
  end

end
