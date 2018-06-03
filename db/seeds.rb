# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

monthly = Product.create(
  title: "monthly plan",
  subtitle: "monthly advertising subscription to zober",
  image_name: "tinylogo.png",
  price: '29.99'.to_f,
  sku: "monthly",
  download_url: "",
  description: "You now have the ability to advertise your home through zober."
)
yearly = Product.create(
  title: "yearly plan",
  subtitle: "yearly advertising subscription to zober",
  image_name: "tinylogo.png",
  price: '365'.to_f,
  sku: "yearly",
  download_url: "",
  description: "You now have the ability to advertise your home through zober. This is valid for one year."
)

topic_names = ['spirituality', 'fitness']
topic_names.each do |name|
  Topic.create(name: name)
end

Admin.create!(email:"tyler@zober.co", password:"Zober2018");
# image_array = ["https://images.craigslist.org/00n0n_cqc2jLGe1w0_600x450.jpg", "https://images.craigslist.org/00f0f_4lZ6YdfQnnu_600x450.jpg", "https://images.craigslist.org/00s0s_ceOPeAs9f25_600x450.jpg"]

#
# index = 1
# 43.times do
#   image_array.each do |link|
#     Image.create!({
#     house_id: index,
#     image: link
#   })
#   end
# index += 1
# end
#
# filter_id_array = [1, 4, 5, 8, 9, 10, 11, 12, 13, 15, 17, 18, 19, 20, 25, 29, 32, 38, 39, 41, 42, 47, 50, 55, 62, 65, 67, 68]
#
# index = 1
# 43.times do
#   filter_id_array.each do |filter|
#     HouseFilter.create!({
#     house_id: index,
#     filter_id: filter
#   })
#   end
# index += 1
# end