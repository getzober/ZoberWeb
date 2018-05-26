require 'test_helper'

class HousesControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get houses_list_url
    assert_response :success
  end

  test "should get individual" do
    get houses_individual_url
    assert_response :success
  end

end
