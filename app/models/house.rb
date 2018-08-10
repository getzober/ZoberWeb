class House < ApplicationRecord
  has_many :images
  has_many :house_filters
  has_many :filters, through: :house_filters
  belongs_to :provider, optional: true
  geocoded_by :address
  
  def address
    [street, city, state, "United States"].compact.join(', ')
  end

  def self.search( search = '' )
    where("city ~* ? OR state ~* ? OR zip_code = ?", search, search, search.to_i ).order("created_at DESC")
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
end
