Feature: User
  In order to participate in local developer community
  As a developer
  I want to be able to create and edit events

Scenario: Sign up
  Given I am on the home page
  And I follow "Create an account"
  And I fill in "Email" with "scott@scottradcliff.com"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I press "Sign up"
  Then I should see "Account successfully created"
  And I should see "Logged in as scott@scottradcliff.com"


Scenario: Sign in
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

Scenario: Sign out
  Given I am logged in
  And I follow "Log out"
  Then I should see "Logged out successfully"


Scenario: Create an event
  Given I am on the home page
  And I am logged in
  And I follow "Create an event"
  And I fill in "Title" with "Nerd Lunch"
  And I fill in "Details" with "A great time"
  And I select "2011" from "event_date_1i"
  And I select "June" from "event_date_2i"
  And I select "24" from "event_date_3i"
  And I press "Create Event"
  Then I should see "Event successfully created"
  And I should see "Nerd Lunch"

Scenario: Edit an event
  Given I have an event
  And I go to my event page
  And I follow "Edit"
  And I fill in "Title" with "Changed"
  And I press "Save Changes"
  Then I should see "Event updated"
  And I should see "Changed"

Scenario: Only user can create an event
  Given I am not signed_in
  And I go to the new event page
  Then I should see "You need to sign in or sign up before continuing."


