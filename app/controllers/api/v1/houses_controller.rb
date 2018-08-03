class Api::V1::HousesController < ApplicationController
  before_action :parse_search_terms, only: [:index]

  def index
    if @search_terms
      @houses = @search_terms.map{|term| House.search( term ) }.flatten.uniq
    else
      @houses = House.all
    end
    render 'index.json.jbuilder'
  end 

  def show
    location = params[:id]
    @houses = House.near(location, 3)
    render 'index.json.jbuilder'
  end

  private

    def parse_search_terms
      if params[:search]
        delimiters = [',', ' ', "'"]
        @search_terms = params[:search].split(Regexp.union(delimiters))
      end
    end

end