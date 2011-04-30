require 'spec_helper'

describe "events/edit.html.erb" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :title => "MyString",
      :city => "MyString",
      :state => "MyString",
      :address => "MyText",
      :url => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_title", :name => "event[title]"
      assert_select "input#event_city", :name => "event[city]"
      assert_select "input#event_state", :name => "event[state]"
      assert_select "textarea#event_address", :name => "event[address]"
      assert_select "input#event_url", :name => "event[url]"
    end
  end
end
