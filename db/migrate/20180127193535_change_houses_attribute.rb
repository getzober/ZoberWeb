class ChangeHousesAttribute < ActiveRecord::Migration[5.1]
  def change
    rename_column :houses, :address, :street
  end
end
