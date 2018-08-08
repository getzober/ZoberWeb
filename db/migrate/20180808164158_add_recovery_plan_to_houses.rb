class AddRecoveryPlanToHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :recovery_plan, :string
  end
end
