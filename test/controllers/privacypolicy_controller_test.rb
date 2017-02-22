require 'test_helper'

class PrivacypolicyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get privacypolicy_show_url
    assert_response :success
  end

end
