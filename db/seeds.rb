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

san_francisco_house = House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'San Francisco', zip_code: 94016,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 37.7079, longitude: -122.4553,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
portland_house =      House.create!( name: 'House of Soberness', street: 'Haight St', state: 'OR', city: 'Portland', zip_code: 97035,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 45.4128, longitude: -122.727,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
sacramento_house =    House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'Sacramento', zip_code: 95628,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 38.6544, longitude: -121.2653,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
louisville_ky_house = House.create!( name: 'House of Soberness', street: 'Haight St', state: 'KY', city: 'Lousville', zip_code: 40018,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 38.232, longitude: -85.4524,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
louisville_co_house = House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Lousville', zip_code: 80027,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 39.9646, longitude: -105.148,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
boulder_house =       House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Boulder', zip_code: 80303,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 40.001, longitude: -105.2284,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
denver_house =        House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Denver', zip_code: 80014,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 39.6637, longitude: -104.8387,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
nyc_house =           House.create!( name: 'House of Soberness', street: 'Haight St', state: 'NY', city: 'New York City', zip_code: 10001,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 40.7483, longitude: -73.9929,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
seattle_house =       House.create!( name: 'House of Soberness', street: 'Haight St', state: 'WA', city: 'Seattle', zip_code: 98101,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 47.6108, longitude: -122.3349,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )
los_angeles_house =   House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'Los Angeles', zip_code: 90001,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'http://www.houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 33.974, longitude: -118.2494,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.' )

house_seeds = [ san_francisco_house, portland_house, sacramento_house, louisville_ky_house, louisville_co_house,
                    boulder_house, denver_house, nyc_house, seattle_house, los_angeles_house ]

image_seeds = %w( http://www.rosecrance.org/wp-content/uploads/2015/12/Rosecrance_8_28_15_02687-1200x800_c.jpg
                  http://vannessrecoveryhouse.com/wp-content/uploads/2017/02/cropped-vannessrecoveryhouse-back.jpg
                  https://www.addictionpro.com/sites/addictionpro.com/files/archive/www.addictionpro.com/Media/Cortlandmuralweb.jpg
                  http://elsagiraldospa.com/wp-content/uploads/2016/10/recovery.jpg
                  https://detoxtorehab.com/wp-content/uploads/2016/11/Charlestown-Recovery-House.jpg
                  http://enfieldrecoveryhouse.com/yahoo_site_admin/assets/images/houseangle_2.28453916_std.JPG
                  http://rehabreviews.com/wp-content/uploads/2015/07/Choices-Recovery-House.png
                  http://incentivesrecoveryhouse.com/wp-content/uploads/2010/03/exterior-palomar.jpg
                  https://aptsumo-s3.s3.amazonaws.com/pictures/data/000/004/285/original/3909abbb-cd35-459a-8e72-fdab48db8d21.jpg?1515649894
                  https://i.ytimg.com/vi/J8rwk8Znd8c/maxresdefault.jpg
                  https://westorlandonews.com/wp-content/uploads/2013/10/RH200final.jpg
                  http://farm9.staticflickr.com/8023/7587287480_26581b13df_b.jpg
                  http://vannessrecoveryhouse.com/wp-content/uploads/2017/02/vannessrecoveryhouse-room2.jpg
                  http://www.mainlinerecovery.com/wp-content/uploads/providence-recovery-residence-ext.jpg
                  http://vannessrecoveryhouse.com/wp-content/uploads/2017/02/cropped-vannessrecoveryhouse-pool.jpg
                  https://bloximages.newyork1.vip.townnews.com/lancasteronline.com/content/tncms/assets/v3/editorial/2/00/200c1e68-dac9-11e3-8a8b-0017a43b2370/53725f2749fcf.image.jpg
                  https://aptsumo-s3.s3.amazonaws.com/pictures/data/000/004/299/original/2647ef1b-0e66-4741-bc40-e2b0eaf9273b.jpg?1515650657
                  https://independencerecovery.com/illpress/wp-content/uploads/2015/01/Indepdence-Sober-Living-Recovery-House-Outside-1024x1024.jpg
                  https://aff.bstatic.com/images/hotel/840x460/105/105709604.jpg
                  http://jcsrecoveryhouse.com/wp-content/uploads/2013/04/img_slide05-1024x629.jpg )

categories = File.readlines( 'categories.csv' ).map{ |line| line.chomp }
category_seeds = ["dummuy 0'th entry"] + categories.map{ |category| Category.create!( category: category ) }

filters =   File.readlines( 'filters.csv' ).map{ |line| line.chomp.split( ',' ) }
filters.each{ |filter| category_seeds[filter[0].to_i].filters.create( filter:filter[1] ) }

house_seeds.each_with_index do |house, index|
  house.images.create( image: image_seeds[index] )
  house.filters = [ Category.find_by( category: 'Age Group' ).filters.first ] +
                  Category.find_by( category: 'Amenity' ).filters.all +
                  [ Category.find_by( category: 'Food' ).filters.first ] +
                  [ Category.find_by( category: 'Gender' ).filters.first ] +
                  Category.find_by( category: 'Insurance Accepted' ).filters.all +
                  Category.find_by( category: 'License/Certification/Accreditation' ).filters.all +
                  [ Category.find_by( category: 'Payment Assistance' ).filters.first ] +
                  Category.find_by( category: 'Treatment Approach' ).filters.all +
                  Category.find_by( category: 'Opoid Treatment' ).filters.all +
                  Category.find_by( category: 'Special Program' ).filters.all +
                  Category.find_by( category: 'Alternative Therapy' ).filters.all +
                  [ Category.find_by( category: 'Pet' ).filters.fourth ] +
                  [ Category.find_by( category: 'Smoking Policy' ).filters.first ] +
                  [ Category.find_by( category: 'Neighborhood Type' ).filters.first ] +
                  [ Category.find_by( category: 'Recovery Plan' ).filters.first ] +
                  [ Category.find_by( category: 'Number Of Diagnoses' ).filters.second ] +
                  Category.find_by( category: 'House Type' ).filters.all
end
