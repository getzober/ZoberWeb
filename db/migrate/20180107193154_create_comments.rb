class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    t.string :name
    t.string :body
    t.references :blog, index:true
    t.references :user, index:true
        t.timestamps
    end
  end
end
