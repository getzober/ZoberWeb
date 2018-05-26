class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :title
      t.text :address
      t.float :latitude
      t.float :longitude
      t.string :visited_by

      t.timestamps
    end
  end
end
