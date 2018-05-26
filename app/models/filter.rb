class Filter < ApplicationRecord
  belongs_to :category
  has_many :house_filters
  has_many :houses, through: :house_filters
end
