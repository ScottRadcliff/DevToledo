Feature: User
  In order to participate in local developer community
  As a developer
  I want to be able to create and edit events

Scenario: Sign out
  Given I am logged in
  And I follow "Log out"
  Then I should see "Logged out successfully"


Scenario: Only user can create an event
  Given I am not signed_in
  And I go to the new event page
  Then I should see "You need to sign in or sign up before continuing."


