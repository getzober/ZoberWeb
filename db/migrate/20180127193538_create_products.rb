class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
t.string :title
t.string :subtitle
t.string :image_name
t.string :sku
t.string :info
t.string :download_url
t.text :description
t.decimal :price
      t.timestamps
    end
  end
end
