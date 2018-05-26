class Product < ApplicationRecord
belongs_to :provider
has_many :providers
def price_in_cents
  (self.price.to_i * 100)
  end
end
