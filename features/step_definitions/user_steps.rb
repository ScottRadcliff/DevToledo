Given /^there is a user with the following:$/ do |table|
  Factory.create(:user) 
end

Given /^I am not signed_in$/ do
  visit destroy_user_session_path
end

Given /^I am logged in$/ do
  user = Factory.create(:user)
  visit path_to new_user_session_path
  fill_in "Email", :with => user.email
  fill_in "Password", :with => user.password
  click_button "Sign in"
end

Given /^I have an event$/ do
  user = Factory.create(:user)
  @event = Factory.create(:event, :user_id => user.id)
end

Given /^I go the my event page$/ do
  visit path_to edit_event_path, :id => @event.id
end

