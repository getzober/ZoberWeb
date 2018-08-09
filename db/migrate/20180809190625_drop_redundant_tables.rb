class DropRedundantTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :insurance_companies
    drop_join_table :houses, :insurance_companies
    drop_table :treatments
    drop_join_table :houses, :treatments
    drop_table :accreditations
    drop_join_table :accreditations, :houses
    drop_table :amenities
    drop_join_table :amenities, :houses
  end
end
