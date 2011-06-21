Then /^I should see the next event$/ do
    event1 = Event.create!(:title => "Event 1", :body => "Body 1", :date => Date.today + 6.months)
    event2 = Event.create!(:title => "Event 2", :body => "Body 2", :date => Date.today + 1.day)
  event = Event.next
  p event[0].title
  page.should have_content(event[0].title)
end

