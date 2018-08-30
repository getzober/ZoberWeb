class HouseAmenity < ApplicationRecord
  belongs_to :amenity
  belongs_to :house
end
