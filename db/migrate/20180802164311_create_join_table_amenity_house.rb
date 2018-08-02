class CreateJoinTableAmenityHouse < ActiveRecord::Migration[5.1]
  def change
    create_join_table :amenities, :houses do |t|
      t.index [:amenity_id, :house_id]
    end
  end
end
