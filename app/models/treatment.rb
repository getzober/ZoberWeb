class Treatment < ApplicationRecord
  has_and_belongs_to_many :houses
  enum style: [:standard, :opoid, :special_program, :alternative]
end
