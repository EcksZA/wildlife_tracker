class RegionsController < ApplicationController
  def index
    @region = Region.all
    render('index.html.erb')
  end

  def show
    @region = Region.find(params[:id])
    render('regions/show.html.erb')
  end

  def new
    @region = Region.new
    render('regions/new.html.erb')
  end

  def create
    @region = Region.new(params[:region])

    if @region.save
      redirect_to("/regions")
    else
      render('regions/new.html')
    end
  end

  def edit
    @region = Region.find(params[:id])
    render('regions/edit.html.erb')
  end

  def update
    @region = Region.find(params[:id])

    if @region.update(params[:region])
      redirect_to("/regions")
    else
      render('regions/edit.html.erb')
    end
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to('/regions')
  end

  def report_region
    @region = Region.find(params["region_id"])
    @sighting = Sighting.where("region_id = ?", params[:region_id])
    render('regions/report_region.html.erb')
  end
end
