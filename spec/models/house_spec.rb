RSpec.describe House, type: :model do
  let!( :house_1 ){ create( :house ) }
  let!( :category_1 ){ create( :category, category: 'Foos' ) }
  let!( :category_2 ){ create( :category, category: 'Bars' ) }
  let!( :category_3 ){ create( :category, category: 'Bazs' ) }
  let!( :filter_1 ){ create( :filter, filter: 'Foo', category: category_2 ) }
  let!( :filter_2 ){ create( :filter, filter: 'Bar', category: category_3 ) }
  let!( :filter_3 ){ create( :filter, filter: 'Baz', category: category_3 ) }

  describe "filters_with_category method" do
    it "returns 'false' if house has no filters in the specified category" do
      expect( house_1.filters_with_category( category_1.category ) ).to eq( false )
    end

    it "returns a single finlter if house has exactly one filter in the specified category" do
      house_1.filters << filter_1
      expect( house_1.filters_with_category( category_2.category ) ).to eq( filter_1.filter )
    end

    it "returns an array of filters if house has more than one filter in the specified category" do
      house_1.filters = [filter_2, filter_3]
      expect( house_1.filters_with_category( category_3.category ) ).to eq( [filter_2.filter, filter_3.filter] )
    end
  end
end