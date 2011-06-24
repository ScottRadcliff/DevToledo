Feature: Events
  In order to see what's happening
  As a visitor
  I want to see local and regional events


#Scenario: Latest Event
#  Given I am on the home page
#  And I have an event with a title of "Drink up"
#  Then I should see "Drink Up"


Scenario: Create an event
  Given I am on the home page
  And I follow "Create an event"
  Then I should be on the new event page
  And I fill in the following:
  |event_title   | Geek Breakfast|
  |event_body    | Blah|
  And I select "2011" from "event_date_1i"
  And I select "June" from "event_date_2i"
  And I select "24" from "event_date_3i"
  And I press "Create Event"
  Then I should see "Event successfully created"
 
