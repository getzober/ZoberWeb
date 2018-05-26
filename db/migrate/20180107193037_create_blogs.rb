class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :post
      t.string :image
      t.string :name
      t.string :website

      t.timestamps
    end
  end
end
