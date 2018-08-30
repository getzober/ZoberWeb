class CreateHouseAmenities < ActiveRecord::Migration[5.1]
  def change
    create_table :house_amenities do |t|
      t.references :amenity, foreign_key: true
      t.references :house, foreign_key: true
      t.timestamps
    end
  end
end
