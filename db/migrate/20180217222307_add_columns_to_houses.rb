class AddColumnsToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :street2, :string
    add_column :houses, :phone, :string
  end
end
