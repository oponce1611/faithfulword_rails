require 'test_helper'

class PsalmsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get psalms_show_url
    assert_response :success
  end

end
