Given /^there is a user with the following:$/ do |table|
  Factory.create(:user, :email => "scott@scottradcliff.com") 
end

Given /^I have an event with the following:$/ do |table|
  # table is a Cucumber::Ast::Table
  Factory.create(:event, :title => "Toledo Rails", :body => "Coming soon", :date => "2011/3/12")
end

Given /^I am not signed_in$/ do
  visit destroy_user_session_path
end

Given /^I am logged in$/ do
  @user = Factory.create(:user, :email => "scott@scottradcliff.com")
  visit path_to new_user_session_path
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Sign in"
end

Given /^I have an event$/ do
  @user = Factory.create(:user)
  visit path_to new_user_session_path
  fill_in "Email", :with => @user.email
  fill_in "Password", :with => @user.password
  click_button "Sign in"
  @event = Factory.create(:event, :user_id => @user.id)
end


