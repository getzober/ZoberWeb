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

  def self.search( search = '' )
    where("city ~* ? OR state ~* ? OR zip_code = ?", search, search, search.to_i ).order("created_at DESC")
  end

  def diagnosis_description
    diagnoses_integer = self.number_of_diagnoses
    if diagnoses_integer == 1
      plurality = 'Single'
    elsif diagnoses_integer == 2
      plurality = 'Double'
    elsif diagnoses_integer == 3
      plurality = 'Triple'
    elsif diagnoses_integer == 4
      plurality = 'Quadruple'
    else
      plurality = 'At least quadruple'
    end
    return plurality + ' diagnosis'
  end

  def smoking_policy
    if self.smoking
      'Smoking allowed'
    else
      'No smoking allowed'
    end
  end
end
