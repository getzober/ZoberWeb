class HousesController < ApplicationController

  def index
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create(house_params)

    @house.save(validate: false)

    params[:filter_ids].each do |filter_id|
    HouseFilter.create(
      house_id: @house.id,
      filter_id: filter_id
      )
    end

    flash[:notice] = "House added successfully"
    render 'index'

  end

  def show
    @house = House.find(params[:id])
    @filter_array = @house.filters.each do |filter|
      filter
    end
    @categories = Category.all
  end


  # @house = House.new
  #   @house.name = params[:house]
  #   @house.user = current_user
  #
  #   if @house.save
  #     flash[:notice] = "House added successfully"
  #   else
  #     flash.now[:alert] = "Uh oh, it didn't save. Try again."
  #     render :new
  #   end
  # end

private

def house_params
  params.require(:house).permit(:name, :street, :city, :state, :zip_code, :email, :website, :facebook, :twitter, :linkedin, :capacity, :price, :deposit, :gender, :insurance, :payment_forms, :property_description, :neighborhood,
   :smoking_policy, :insurance, :activities, :hotttub, :ac, :heating, :internet, :parking)
 end
end
