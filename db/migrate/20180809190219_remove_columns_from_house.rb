class RemoveColumnsFromHouse < ActiveRecord::Migration[5.1]
  def change
    remove_column :houses, :house_type
    remove_column :houses, :number_of_diagnoses
    remove_column :houses, :electronics
    remove_column :houses, :smoking
    remove_column :houses, :gender
    remove_column :houses, :room_type
    remove_column :houses, :recovery_plan
  end
end
