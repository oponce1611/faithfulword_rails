require 'test_helper'

class BiblememoryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get biblememory_show_url
    assert_response :success
  end

end
