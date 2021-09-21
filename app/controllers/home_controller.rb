class HomeController < ApplicationController

def index
  @events = Event.all
  @total_events = Event.all.count || 0
  @approved_images = Screenshot.where(approved:true)
end

def requirements
end

def screenshots
  @screenshot = Screenshot.new
  @all_screenshots = Screenshot.all
  @approved_images = Screenshot.where(approved:true)
  @featured_image = @approved_images.last
end

end
