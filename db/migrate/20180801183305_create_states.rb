class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|

      t.timestamps
      t.string :full_name
      t.string :abbreviation

    end
  end
end
