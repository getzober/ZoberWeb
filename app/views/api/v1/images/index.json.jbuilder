json.array! @images.each do |image| 
  json.id image.id 
  json.house_id image.house_id 
  json.image image.image 
end