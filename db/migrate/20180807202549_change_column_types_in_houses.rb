class ChangeColumnTypesInHouses < ActiveRecord::Migration[5.1]
  def change
    change_column :houses, :house_type, :string
    change_column :houses, :room_type, :string
    change_column :houses, :gender, :string
  end
end
