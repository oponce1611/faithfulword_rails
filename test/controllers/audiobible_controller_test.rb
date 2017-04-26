require 'test_helper'

class AudiobibleControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get audiobible_show_url
    assert_response :success
  end

end
