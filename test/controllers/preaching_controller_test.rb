require 'test_helper'

class PreachingControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get preaching_show_url
    assert_response :success
  end

end
