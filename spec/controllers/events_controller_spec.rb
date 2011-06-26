require 'spec_helper'
include Devise::TestHelpers

describe EventsController do
  
  before(:each) do
   @user = Factory.create(:user)
   @event = Factory.create(:event, :user_id => @user.id)
   sign_in @user
  end


  it "#show" do
    get :show, :id => @event.id
    assigns(:event).should_not be_nil
  end

 it "#edit" do
   get :edit, :id => @event.id
   response.code.should == "200"
 end

end
