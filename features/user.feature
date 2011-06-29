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


Scenario: Sign out
  Given I am logged in
  And I follow "Log out"
  Then I should see "Logged out successfully"

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


