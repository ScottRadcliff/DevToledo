require 'spec_helper'

describe IndexController do

  it "should return the next event" do
    get :index
    assert_response :success
    
    assigns(:event).should_not be_nil

  end

end
