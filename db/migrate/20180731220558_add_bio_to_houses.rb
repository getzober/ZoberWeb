class AddBioToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :bio, :text
  end
end
