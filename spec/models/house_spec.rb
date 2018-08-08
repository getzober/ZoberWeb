RSpec.describe House, type: :model do
  let!( :house1 ){ create( :house ) }
  let!( :house2 ){ create( :house ) }

  it "diagnosis description displays properly" do
    house1.update( number_of_diagnoses: 1)
    expect( house1.diagnosis_description ).to eq( "Single diagnosis" )
    house2.update( number_of_diagnoses: 5)
    expect( house2.diagnosis_description ).to eq( "At least quadruple diagnosis" )
  end

  it "electronics policy displays properly" do
    house1.update( smoking: true )
    expect( house1.smoking_policy ).to eq( "Smoking allowed" )
    house2.update( smoking: false )
    expect( house2.smoking_policy ).to eq( "No smoking allowed" )
  end
end