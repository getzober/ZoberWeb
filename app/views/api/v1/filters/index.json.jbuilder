json.array! @filters.each do |filter| 
  json.id filter.id 
  json.category_id filter.category_id 
  json.filter filter.filter 
end