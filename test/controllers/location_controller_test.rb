require 'test_helper'

class LocationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get location_show_url
    assert_response :success
  end

end
