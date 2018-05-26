class Api::V1::ImagesController < ApplicationController
  @images = Image.all 
  render 'index.json.jbuilder' 
end
