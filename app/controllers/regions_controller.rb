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
end
