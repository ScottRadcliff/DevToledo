Feature: Create an event
  In order to let other developers know about what's happening
  As a user
  I want to be able to create an event

Scenario: Create an new event
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
