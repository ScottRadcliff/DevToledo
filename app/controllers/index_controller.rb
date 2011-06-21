class IndexController < ApplicationController

  def index
   @event = Event.next
   print @event.inspect
  end

end
