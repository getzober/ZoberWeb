class CreateFilters < ActiveRecord::Migration[5.1]
  def change
    create_table :filters do |t|
      t.integer :category_id
      t.string :filter

      t.timestamps
    end
  end
end
