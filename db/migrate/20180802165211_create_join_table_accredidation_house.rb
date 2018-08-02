class CreateJoinTableAccredidationHouse < ActiveRecord::Migration[5.1]
  def change
    create_join_table :accredidations, :houses do |t|
      t.index [:accredidation_id, :house_id]
    end
  end
end
