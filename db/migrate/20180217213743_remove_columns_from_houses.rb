class RemoveColumnsFromHouses < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :gender, :string
    remove_column :houses, :payment_forms, :string
    remove_column :houses, :insurance, :boolean
    remove_column :houses, :smoking_policy, :string
    remove_column :houses, :transportation, :boolean
    remove_column :houses, :activities, :string
    remove_column :houses, :room_amenities, :string
    remove_column :houses, :pets, :boolean
    remove_column :houses, :hotttub, :boolean
    remove_column :houses, :ac, :boolean
    remove_column :houses, :heating, :boolean
    remove_column :houses, :tv, :string
    remove_column :houses, :internet, :string
    remove_column :houses, :parking, :boolean
  end
end
