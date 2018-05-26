require 'test_helper'

class ProvidersControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get providers_signup_url
    assert_response :success
  end

end
