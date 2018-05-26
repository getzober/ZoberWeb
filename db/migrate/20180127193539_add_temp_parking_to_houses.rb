class AddTempParkingToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :parking_tmp, :boolean
  end
end
