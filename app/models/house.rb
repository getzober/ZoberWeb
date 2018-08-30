class House < ApplicationRecord
  has_many :images
  has_many :house_filters
  has_many :filters, through: :house_filters
  #belongs_to :provider, optional: true
  geocoded_by :address
  
  def address
    [street, city, state, "United States"].compact.join(", ")
  end

  def self.search(options = {})
    distance = options[:distance] || 50
    if options[:lat] and options[:lng]
      houses_within_range(options[:lat], options[:lng], distance)
    else
      all
    end
  end

  def filters_with_category( category_name )
    # Returns an array for multiple filters, or a single filter if only one exists.
    category_id = Category.find_by( category: category_name ).id
    filters_to_return = self.filters.where( "category_id = ?", category_id)
    if filters_to_return.empty?
      false
    elsif filters_to_return.count > 1
      filters_to_return.all.map( &:filter )
    else
      filters_to_return.first.filter
    end
  end
  
  enum role: [:sober_living, :treatment_center]
  private
    
    def self.houses_within_range(lat, lng, distance)
      where("
        latitude <= #{high_lat(lat, distance)} 
        AND latitude >= #{low_lat(lat, distance)} 
        AND longitude <= #{high_lng(lat, lng, distance)} 
        AND longitude >= #{low_lng(lat, lng, distance)}
      ")
    end

    def self.high_lat(lat, distance)
      lat.to_f + (distance / 69.0)
    end

    def self.low_lat(lat, distance)
      lat.to_f - (distance / 69.0)
    end

    def self.high_lng(lat, lng, distance)
      lat_radians = (lat.to_f * Math::PI) / 180
      lng.to_f + (distance / (Math.cos(lat_radians) * 69.172))
    end

    def self.low_lng(lat, lng, distance)
      lat_radians = (lat.to_f * Math::PI) / 180
      lng.to_f - (distance / (Math.cos(lat_radians) * 69.172))
    end

end
