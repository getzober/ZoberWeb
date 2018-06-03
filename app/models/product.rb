class Product < ApplicationRecord
  belongs_to :provider, optional: true
  has_many :providers

  def price_as_float
    price.to_f
  end

  def price_in_cents
    (self.price.to_i * 100)
  end
end
