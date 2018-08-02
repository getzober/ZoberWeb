class CreateInsuranceCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :insurance_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
