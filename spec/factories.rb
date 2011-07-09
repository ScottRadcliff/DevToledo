Factory.define :event do |event|
  event.title 'Title 1'
  event.body  'Body text'
  event.date  Date.today
  event.association :user_id, :factory => :user
end


