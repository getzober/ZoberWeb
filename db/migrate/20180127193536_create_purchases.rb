class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
t.string :email
t.integer :amount
t.string :description
t.string :currency
t.string :customer_id
t.string :card
t.string :product_id
      t.timestamps
    end
  end
end
