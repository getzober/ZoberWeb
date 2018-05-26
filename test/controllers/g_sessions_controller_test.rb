require 'test_helper'

class GSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get g_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get g_sessions_destroy_url
    assert_response :success
  end

end
