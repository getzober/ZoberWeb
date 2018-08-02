class CreateTreatments < ActiveRecord::Migration[5.1]
  def change
    create_table :treatments do |t|
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
