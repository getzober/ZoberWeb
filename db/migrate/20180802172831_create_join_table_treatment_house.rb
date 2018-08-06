class CreateJoinTableTreatmentHouse < ActiveRecord::Migration[5.1]
  def change
    create_join_table :treatments, :houses do |t|
      t.index [:treatment_id, :house_id]
    end
  end
end
