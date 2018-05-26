class ChangeHousesParkingDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :houses, :deposit, :decimal, precision: 7, scale: 2
  end
end
