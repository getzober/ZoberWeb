json.array! @houses.each do |house|
  json.id house.id
  json.name house.name
  json.street house.street 
  json.state house.state
  json.city house.city 
  json.zip_code house.zip_code
  json.email house.email 
  json.website house.website 
  json.facebook house.facebook 
  json.instagram house.instagram
  json.linkedin house.linkedin
  json.twitter house.twitter
  json.capacity house.capacity
  json.price house.price
  json.deposit house.deposit
  json.property_description house.property_description
  json.neighborhood house.neighborhood
  json.latitude house.latitude
  json.longitude house.longitude
  json.street2 house.street2
  json.phone house.phone

  json.images house.images.each do |image|
    json.id image.id
    json.house_id house.id
    json.image image.image
  end
  json.filters house.filters.each do |filter|
    json.id filter.id
    json.category_id filter.category_id
    json.filter filter.filter
  end
end 