Feature: Sign up
  In order to use all of the sites features
  As a user
  I want to create an account


Scenario: Create an account
  Given I am on the home page
  And I follow "Create an account"
  And I fill in "Email" with "scott@scottradcliff.com"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I press "Sign up"
  Then I should see "Account successfully created"
  And I should see "Logged in as scott@scottradcliff.com"
 

Scenario: Create an account with an invalid email address
  Given I am on the home page
  And I follow "Create an account"
  And I fill in "Email" with "scott@scottradcliff"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I press "Sign up"
  Then I should see "Email is invalid"


