class ChangeTreatmentTypeNameToStyle < ActiveRecord::Migration[5.1]
  def change
    rename_column :treatments, :type, :style
  end
end
