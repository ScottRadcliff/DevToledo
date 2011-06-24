require 'spec_helper'

describe IndexController do

 it "#index" do
   get :index
   assigns(:event).should_not be_nil
 end
 
end
