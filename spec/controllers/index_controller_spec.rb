require 'spec_helper'

describe IndexController do

  it "should return index" do
    get :index
    response.should be_success
  end

end
