class SightingsController < ApplicationController
  def new
    species = Species.find(params[:sighting_id])
    @sighting = species.sightings.new
    render('sightings/new.html.erb')
  end
end
