class House < ApplicationRecord
  has_many :images
  has_many :house_filters
  has_many :filters, through: :house_filters
  belongs_to :provider, optional: true
  has_and_belongs_to_many :amenities
  has_and_belongs_to_many :accreditations
  has_and_belongs_to_many :insurance_companies
  has_and_belongs_to_many :treatments
  geocoded_by :address
  
  def address
    [street, city, state, "United States"].compact.join(', ')
  end
end
