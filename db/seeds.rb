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
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 37.7079, longitude: -122.4553,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
portland_house =      House.create!( name: 'House of Soberness', street: 'Haight St', state: 'OR', city: 'Portland', zip_code: 97035,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 45.4128, longitude: -122.727,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
sacramento_house =    House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'Sacramento', zip_code: 95628,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 38.6544, longitude: -121.2653,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
louisville_ky_house = House.create!( name: 'House of Soberness', street: 'Haight St', state: 'KY', city: 'Lousville', zip_code: 40018,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 38.232, longitude: -85.4524,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
louisville_co_house = House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Lousville', zip_code: 80027,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 39.9646, longitude: -105.148,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
boulder_house =       House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Boulder', zip_code: 80303,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 40.001, longitude: -105.2284,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
denver_house =        House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CO', city: 'Denver', zip_code: 80014,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 39.6637, longitude: -104.8387,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
nyc_house =           House.create!( name: 'House of Soberness', street: 'Haight St', state: 'NY', city: 'New York City', zip_code: 10001,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 40.7483, longitude: -73.9929,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
seattle_house =       House.create!( name: 'House of Soberness', street: 'Haight St', state: 'WA', city: 'Seattle', zip_code: 98101,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 47.6108, longitude: -122.3349,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )
los_angeles_house =   House.create!( name: 'House of Soberness', street: 'Haight St', state: 'CA', city: 'Los Angeles', zip_code: 90001,
                                     linkedin: 'houseofsoberness', twitter: 'houseofsoberness', website: 'houseofsoberness.com',
                                     capacity: 90, price: 3000, deposit: 3000, property_description: 'A caring house',
                                     neighborhood: 'Urban', curfew: '6 PM', overnight_passes: 'None', latitude: 33.974, longitude: -118.2494,
                                     street2: '1', phone: '1234567890', email: 'email@email.com',
                                     bio: 'Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since.',
                                     house_type: 'Residential', number_of_diagnoses: 2, electronics: 'Allowed on weekends',
                                     smoking: false, gender: 'Coed', room_type: 'Private and semi-private', recovery_plan: 'Traditional | 12 step' )

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

all_house_seeds.each_with_index do |house, index|
  house.treatments =          all_treatment_seeds
  house.amenities =           all_amenity_seeds
  house.accreditations =      all_accreditation_seeds
  house.insurance_companies = all_insurance_company_seeds
  house.images.create( image: image_seeds[index] )
end
