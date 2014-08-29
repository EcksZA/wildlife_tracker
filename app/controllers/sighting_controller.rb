class SightingController < ApplicationController
  def new
    species = Species.find(:sighting_id)
    @sighting = species.sightings.new
    render('sightings/new.html.erb')
  end
end
