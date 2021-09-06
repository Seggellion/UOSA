class HomeController < ApplicationController

def index
  @events = Event.all
  @total_events = Event.all.count || 0
end

def requirements
end

end
