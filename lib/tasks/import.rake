require 'csv'

namespace :import do 
  desc "Import data from csv"
  task categories: :environment do 
    filename = File.join Rails.root, "categories.csv"
    CSV.foreach(filename, headers: true) do |row|
      Category.create({
    category: row[0]
      })
    end
  end 
end 


namespace :import do 
  desc "Import data from csv"
  task filters: :environment do 
    filename = File.join Rails.root, "filters.csv"
    CSV.foreach(filename, headers: true) do |row|
      Filter.create({
    category_id: row[0],
    filter: row[1]
      })
    end
  end 
end 

namespace :import do 
  desc "Import data from csv"
  task sf: :environment do 
    filename = File.join Rails.root, "sf_samhsa.csv"
    CSV.foreach(filename, headers: true) do |row|
      House.create({
    name: row[0],
    property_description: row[1],
    street: row[2],
    street2: row[3],
    city: row[4],
    state: row[5],
    zip_code: row[6],
    phone: row[7],
    website: row[8],
    latitude: row[9],
    longitude: row[10],
    email: "NA",
    facebook: "NA",
    linkedin: "NA",
    twitter: "NA",
    price: 0.00,
    deposit: 0.00,
    neighborhood: "NA",
    curfew: "NA",
    overnight_passes: "NA"
      })
    end
  end 
end 