class AddRoleToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :role, :integer
  end
end
