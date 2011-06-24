class IndexController < ApplicationController

  def index
   @event = Event.next
  end

  
end
