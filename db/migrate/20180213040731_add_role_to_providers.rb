class AddRoleToProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :providers, :role, :integer,  null: false

  end
end
