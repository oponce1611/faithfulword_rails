require 'test_helper'

class SoulwinningControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get soulwinning_show_url
    assert_response :success
  end

end
