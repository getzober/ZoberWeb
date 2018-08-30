class RemovePlaces < ActiveRecord::Migration[5.1]
  def change
    drop_table :places
  end
end
