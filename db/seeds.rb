# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
monthly = Product.create(title: "monthly plan",
subtitle: "monthly advertising subscription to zober", image_name: "tinylogo.png", price: "$29.99",
sku: "monthly", download_url: "", description: %{<p>you now have the ability to advertise your home through zober</p>
  });
yearly = Product.create(title: "yearly plan",
  subtitle: "yearly advertising subscription to zober", image_name: "tinylogo.png", price: "$365.00",
  sku: "yearly", download_url: "", description: %{<p>you now have the ability to advertise your home through zober. this is valid for one year. </p>
    });
Topic.create!(name: "spirituality");
Topic.create!(name: "fitness");
Admin.create!(email:"tyler@zober.co", password:"Zober2018");
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'San Francisco',
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'A really cool place, yo!',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 1.0, longitude: 1.0,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com',
               bio: 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum
                    deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non
                    provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum
                    fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis
                    est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis
                    voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis
                    aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non
                    recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus
                    maiores alias consequatur aut perferendis doloribus asperiores repellat.' )

# ["Alabama", "AL"]
# ["Alaska", "AK"]
# ["Arizona - AZ
# ["Arkansas - AR
# ["California - CA
# ["Colorado - CO
# ["Connecticut - CT
# ["Delaware - DE
# ["Florida - FL
# ["Georgia - GA
# ["Hawaii - HI
# ["Idaho - ID
# ["Illinois - IL
# ["Indiana - IN
# ["Iowa - IA
# ["Kansas - KS
# ["Kentucky - KY
# ["Louisiana - LA
# ["Maine - ME
# ["Maryland - MD
# ["Massachusetts - MA
# ["Michigan - MI
# ["Minnesota - MN
# ["Mississippi - MS
# ["Missouri - MO
# ["Montana - MT
# ["Nebraska - NE
# ["Nevada - NV
# ["New Hampshire - NH
# ["New Jersey - NJ
# ["New Mexico - NM
# ["New York - NY
# ["North Carolina - NC
# ["North Dakota - ND
# ["Ohio - OH
# ["Oklahoma - OK
# ["Oregon - OR
# ["Pennsylvania - PA
# ["Rhode Island - RI
# ["South Carolina - SC
# ["South Dakota - SD
# ["Tennessee" - TN
# ["Texas" - TX
# ["Utah" - UT
# ["Vermont" - VT
# ["Virginia" - VA
# ["Washington" - WA
# ["West Virginia" - WV
# ["Wisconsin" - WI
# ["Wyoming" - WY

# Provider.create!( firstname: 'John', lastname: 'Doe', organization: 'Sober Provider', occupation: 'Outreach Manager',
#                   email: 'johndoe@sobprov.com', role: 1, password: 'password1', password_confirmation: 'password1',
#                   salt: 'salt', stripe_account_id: 0, subscribed: true )


# image_array = ["https://images.craigslist.org/00n0n_cqc2jLGe1w0_600x450.jpg",
# "https://images.craigslist.org/00f0f_4lZ6YdfQnnu_600x450.jpg", "https://images.craigslist.org/00s0s_ceOPeAs9f25_600x450.jpg"]

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