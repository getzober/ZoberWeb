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
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'San Francisco', zip_code: 94016,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 37.7079, longitude: -122.4553,
               street2: '1', phone: '1234567890', email: 'email@email.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'OR', city: 'Portland', zip_code: 97035,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 45.4128, longitude: -122.727,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'Sacramento', zip_code: 95628,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 38.6544, longitude: -121.2653,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'KY', city: 'Lousville', zip_code: 40018,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 38.232, longitude: -85.4524,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Lousville', zip_code: 80027,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 39.9646, longitude: -105.148,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Boulder', zip_code: 80303,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 40.001, longitude: -105.2284,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Denver', zip_code: 80014,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 39.6637, longitude: -104.8387,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'NY', city: 'New York City', zip_code: 10001,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 40.7483, longitude: -73.9929,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'WA', city: 'Seattle', zip_code: 98101,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 47.6108, longitude: -122.3349,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'Los Angeles', zip_code: 90001,
               linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
               capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
               neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 33.974, longitude: -118.2494,
               street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )