class RemoveOldHousesParking < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :parking, :string
  end
end
