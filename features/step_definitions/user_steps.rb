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

