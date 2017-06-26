class HomeController < ApplicationController
  def home
    @animals = Animal.all
    @regions = Region.all
    @sightings = Sighting.all
  end
end
