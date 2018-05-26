class ChangeHousesParkingColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :houses, :parking_tmp, :parking
  end
end
