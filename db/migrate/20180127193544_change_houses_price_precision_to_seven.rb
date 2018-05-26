class ChangeHousesPricePrecisionToSeven < ActiveRecord::Migration[5.1]
  def change
    change_column :houses, :price, :decimal, precision: 7, scale: 2
  end
end
