RSpec.describe House, type: :model do
  let!( :house ){ create( :house ) }
  describe "name" do
    it "works" do
      expect( house.name ).to eq( "Test House 1" )
    end
  end
end