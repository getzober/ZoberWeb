class Accreditation < ApplicationRecord
  has_and_belongs_to_many :houses
end
