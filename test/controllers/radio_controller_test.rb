require 'test_helper'

class RadioControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get radio_show_url
    assert_response :success
  end

end
