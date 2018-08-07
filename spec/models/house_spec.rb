RSpec.describe House, type: :model do
  let!( :house ){ create( :house ) }
  describe "factory_bot and database_cleaner" do
    it "work" do
      expect( house.name ).to eq( "Test House 1" )
      expect( House.count ).to eq( 1 )
    end
  end
end