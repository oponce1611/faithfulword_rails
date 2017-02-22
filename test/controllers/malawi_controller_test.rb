require 'test_helper'

class MalawiControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get malawi_show_url
    assert_response :success
  end

end
