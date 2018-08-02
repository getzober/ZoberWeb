class Treatment < ApplicationRecord
  has_and_belongs_to_many :houses
  enum type: [:standard, :opoid, :alternative]
end
