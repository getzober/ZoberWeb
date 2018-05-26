class Api::V1::FiltersController < ApplicationController
  def index
    @filters = Filters.all
    render 'index.json.jbuilder'
  end 
end
