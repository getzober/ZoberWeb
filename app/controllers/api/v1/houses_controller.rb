class Api::V1::HousesController < ApplicationController
  def index
    # @houses = House.limit(10).order('created_at DESC')
    render 'index.json.jbuilder'
  end

  def show
    location = params[:id]
    @houses = House.near(location, 3)
    render 'index.json.jbuilder'
  end

end
