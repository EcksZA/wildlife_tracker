class RegionsController < ApplicationController
  def index
    @region = Region.new
    render('index.html.erb')
  end
end
