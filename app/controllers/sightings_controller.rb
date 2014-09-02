class SightingsController < ApplicationController
  def new
    species = Species.find(params[:species_id])
    @sighting = species.sightings.new
    @region = Region.all
    render('/sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.new(params[:sighting])
    @region = Region.all

    if @sighting.save
      redirect_to("/species/#{@sighting.species_id}")
    else
      render('/sightings/new.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('/sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])

    if @sighting.update(params[:sighting])
      redirect_to("/species/#{@sighting.species_id}")
    else
      render('/sightings/edit.html.erb')
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    render('/sightings/destroy.html.erb')
  end

  def report_date
    @species = Species.find(params[:species_id])
    @sighting = Sighting.where("date >= ? AND date <= ? AND species_id = ?", params[:start_date], params[:end_date], params[:species_id])
    render('sightings/report_date.html.erb')
  end
end
