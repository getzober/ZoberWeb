class AddColumnsToHouse < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :house_type, :integer
    add_column :houses, :number_of_diagnoses, :integer
    add_column :houses, :electronics, :string
    add_column :houses, :smoking, :boolean
    add_column :houses, :gender, :integer
    add_column :houses, :room_type, :integer
  end
end
