class House < ApplicationRecord
  has_many :images
  has_many :house_filters
  has_many :filters, through: :house_filters
  belongs_to :provider, optional: true
  geocoded_by :address
  
  def address
    [street, city, state, "United States"].compact.join(', ')
  end
end
