FactoryBot.define do
  factory :house do
    sequence( :name ){ |n| "Test House #{n}" }
    street "Easy St"
    state "CA"
    city "San Francisco"
    zip_code 94016
    sequence( :email ){ |n| "info@testhouse#{n}.com" }
    sequence( :website ){ |n| "www.testhouse#{n}.com" }
    facebook "testhouse"
    instagram "testhouse"
    linkedin "testhouse"
    twitter "testhouse"
    capacity 100
    price 5000.00
    deposit 5000.00
    property_description "A cool place for cool people"
    neighborhood "The best one"
    curfew "10 PM"
    overnight_passes "Twice per month"
    latitude 37.7079
    longitude -122.4553
    street2 "Suite 1"
    phone "1234567890"
    bio "Founded in 1902, the House of Soberness has stayed true to its mission statement of caring for all those in need ever since."
    house_type "Detox and residential"
    number_of_diagnoses 2
    electronics false
    smoking "Only in designated outdoor areas"
    gender "Co-ed"
    room_type "Private and semi-private"
  end
end
