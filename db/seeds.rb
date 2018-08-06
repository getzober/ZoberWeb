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
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 37.7079, longitude: -122.4553,
                                     street2: '1', phone: '1234567890', email: 'email@email.com' )
portland_house =      House.create!( name: 'House of Soberness', street: 'Haight St', state: 'OR', city: 'Portland', zip_code: 97035,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 45.4128, longitude: -122.727,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
sacramento_house =    House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'Sacramento', zip_code: 95628,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 38.6544, longitude: -121.2653,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
louisville_ky_house = House.create!( name: 'House of Soberness', street: 'Haight St', state: 'KY', city: 'Lousville', zip_code: 40018,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 38.232, longitude: -85.4524,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
louisville_co_house = House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Lousville', zip_code: 80027,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 39.9646, longitude: -105.148,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
boulder_house =       House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Boulder', zip_code: 80303,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 40.001, longitude: -105.2284,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
denver_house =        House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Denver', zip_code: 80014,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 39.6637, longitude: -104.8387,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
nyc_house =           House.create!( name: 'House of Soberness', street: 'Haight St', state: 'NY', city: 'New York City', zip_code: 10001,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 40.7483, longitude: -73.9929,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
seattle_house =       House.create!( name: 'House of Soberness', street: 'Haight St', state: 'WA', city: 'Seattle', zip_code: 98101,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 47.6108, longitude: -122.3349,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )
los_angeles_house =   House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'Los Angeles', zip_code: 90001,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'Description.',
                                     neighborhood: 'The best one', curfew: '6 PM', overnight_passes: 'None', latitude: 33.974, longitude: -118.2494,
                                     street2: '1', phone: '1234567890', email: 'info@soberhouse.com' )

all_house_seeds = [ san_francisco_house, portland_house, sacramento_house, louisville_ky_house, louisville_co_house,
                    boulder_house, denver_house, nyc_house, seattle_house, los_angeles_house ]

anger_management =   Treatment.create!( name: "Anger management", style: :standard )
brief_intervention = Treatment.create!( name: "Brief intervention approach", style: :standard )
matrix_model =       Treatment.create!( name: "Matrix model", style: :standard )
medication_assist =  Treatment.create!( name: "Medication-assisted therapy (MAT)", style: :opoid )
veterans =           Treatment.create!( name: "Veterans", style: :special_program )
eating_disorder =    Treatment.create!( name: "Eating disorder", style: :special_program )
yoga =               Treatment.create!( name: "Yoga", style: :alternative )
equine_therapy =     Treatment.create!( name: "Equine therapy", style: :alternative )

all_treatment_seeds = [ anger_management, brief_intervention, matrix_model, medication_assist, veterans, eating_disorder,
                        yoga, equine_therapy ]

linens =     Amenity.create!( name: "Linens" )
toiletries = Amenity.create!( name: "Toiletries" )
dishes =     Amenity.create!( name: "Dishes and cookware" )
wifi =       Amenity.create!( name: "Wi-Fi" )
pool =       Amenity.create!( name: "Pool" )

all_amenity_seeds = [ linens, toiletries, dishes, wifi, pool ]

jcaho = Accreditation.create!( name: "Joint-Commision (JCAHO)" )

all_accreditation_seeds = [ jcaho ]

aetna =       InsuranceCompany.create!( name: "Aetna" )
am_fam_ins =  InsuranceCompany.create!( name: "American Family Insurance" )
amerigroup =  InsuranceCompany.create!( name: "Amerigroup" )
caresource =  InsuranceCompany.create!( name: "CareSource" )
horace_mann = InsuranceCompany.create!( name: "Horace Man Educators Corp." )

all_insurance_company_seeds = [ aetna, am_fam_ins, amerigroup, caresource, horace_mann ]

all_house_seeds.each do |house|
  house.treatments =          all_treatment_seeds
  house.amenities =           all_amenity_seeds
  house.accreditations =      all_accreditation_seeds
  house.insurance_companies = all_insurance_company_seeds
end



