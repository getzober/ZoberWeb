class AddLatitudeAndLongitudeToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :latitude, :float
    add_column :houses, :longitude, :float
  end
end
