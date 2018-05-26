class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :city
      t.integer :zip_code
      t.string :email
      t.string :website
      t.string :facebook
      t.string :instagram
      t.string :linkedin
      t.string :twitter
      t.integer :capacity
      t.decimal :price, precision: 4, scale: 2
      t.decimal :deposit, precision: 4, scale: 2
      t.string :gender
      t.string :payment_forms
      t.boolean :insurance
      t.string :property_description
      t.string :neighborhood
      t.string :smoking_policy
      t.boolean :transportation
      t.string :parking
      t.string :activities
      t.string :room_amenities
      t.boolean :pets
      t.boolean :hotttub
      t.boolean :ac
      t.boolean :heating
      t.string :tv
      t.string :internet
      t.string :curfew
      t.string :overnight_passes

      t.timestamps
    end
  end
end
