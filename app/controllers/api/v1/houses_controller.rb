class Api::V1::HousesController < ApplicationController

  def index
    @houses = House.search(search_params)
    render 'index.json.jbuilder'
  end 

  def show
    location = params[:id]
    @houses = House.near(location, 3)
    render 'index.json.jbuilder'
  end

  private

    def search_params
      options = params.permit(:lat, :lng, :distance)
      options[:lat] = options[:lat].to_i
      options[:lng] = options[:lng].to_i
      if options[:distance] and options[:distance] > 0
        options[:distance] = options[:distance].to_i
      else
        options[:distance] = 50
      end
      options
    end

end
