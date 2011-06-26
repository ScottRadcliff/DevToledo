Factory.define :event do |event|
  event.title 'Title 1'
  event.body  'Body text'
  event.date  Date.today
end


Factory.define :user do |user|
  user.email 'scott@scottradcliff.com'
  user.password "password"
end
