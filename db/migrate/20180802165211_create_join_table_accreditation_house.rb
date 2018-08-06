class CreateJoinTableAccreditationHouse < ActiveRecord::Migration[5.1]
  def change
    create_join_table :accreditations, :houses do |t|
      t.index [:accreditation_id, :house_id]
    end
  end
end
