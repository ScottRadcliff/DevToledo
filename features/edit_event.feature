Feature: Edit an event
  In order to make sure my events contain accurate information
  As the creator of an event
  I want to be able to edit the event details


Scenario: Edit and event's title
  Given I have an event
  And I go to my event page
  And I follow "Edit"
  And I fill in "Title" with "Changed"
  And I press "Save Changes"
  Then I should see "Event updated"
  And I should see "Changed"


Scenario: Edit an event's date
  Given I have an event with the following:
  |title   |Toledo Rails|
  |body    |Coming soon |
  |date    |2011/3/12   |
  |user_id |1           |
  And I go to my event page
  And I follow "Edit"
  And I select "2011" from "event_date_1i"
  And I select "July" from "event_date_2i"
  And I select "24" from "event_date_3i"
  Then I should see "Event succussfully updated"
  And I should see "7/24/11"
  
