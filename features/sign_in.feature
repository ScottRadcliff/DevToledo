Feature: Sign in
  In order to create and edit events
  As a user
  I want to be able to sign into the site


Scenario: Sign in with valid name
  Given there is a user with the following:
  |email   |scott@scottradcliff.com|
  |password|password|
  And I am on the home page
  And I am not signed_in
  And I follow "Log in"
  And I fill in "Email" with "scott@scottradcliff.com"
  And I fill in "Password" with "password"
  And I press "Sign in"
  Then I should see "Logged in successfully"



Scenario: Sign in with an invalid password
  Given there is a user with the following:
  |email   |scott@scottradcliff.com|
  |password|password|
  And I am on the home page
  And I am not signed_in
  And I follow "Log in"
  And I fill in "Email" with "scott@scottradcliff.com"
  And I fill in "Password" with "password1"
  And I press "Sign in"
  Then I should see "Invalid email or password."
