class Api::V1::HousesController < ApplicationController
  def index
    @houses = House.all
    render 'index.json.jbuilder'
  end 

  def show
    location = params[:id]
    @houses = House.near(location, 3)
    render 'index.json.jbuilder'
  end 

end
