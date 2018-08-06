class CreateJoinTableInsuranceCompanyHouse < ActiveRecord::Migration[5.1]
  def change
    create_join_table :insurance_companies, :houses do |t|
      t.index [:insurance_company_id, :house_id], name: 'index_insurance_house_on_ins_co_id_and_house_id'
    end
  end
end
