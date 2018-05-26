class CreateHouseFilters < ActiveRecord::Migration[5.1]
  def change
    create_table :house_filters do |t|
      t.integer :house_id
      t.integer :filter_id

      t.timestamps
    end
  end
end
