Factory.define :event do |event|
  event.title 'Title 1'
  event.body  'Body text'
  event.date  Date.today
  event.association :user_id, :factory => :user
end


Factory.define :user do |user|
  user.sequence(:email) {|n| "scott#{n}@scottradcliff.com" }
  user.password "password"
end
