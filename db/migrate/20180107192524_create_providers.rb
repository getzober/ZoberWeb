class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :firstname
      t.string :lastname
      t.string :organization
      t.string :occupation
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.integer :stripe_account_id
      t.boolean :subscribed
      t.timestamps
    end
  end
end
