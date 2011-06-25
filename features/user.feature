Feature: User
  In order to participate in local developer community
  As a developer
  I want to be able to create and edit events

Scenario: Sign up
  Given I am on the home page
  And I press "Create an account"
  And I fill in "email" with "scott@scottradcliff.com"
  And I fill in "password" with "password"
  Then I should see "Account successfully created"


Scenario: Sign in

Scenario: Edit account

Scenario: Delete account

Scenario: Create an event

Scenario: Edit an event


