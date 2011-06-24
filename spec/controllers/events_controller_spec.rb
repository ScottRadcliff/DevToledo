require 'spec_helper'

describe EventsController do

  it "#show" do
    event = Factory.create(:event)
    get :show, :id => event.id
    assigns(:event).should_not be_nil
  end

end
