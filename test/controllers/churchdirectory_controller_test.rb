require 'test_helper'

class ChurchdirectoryControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get churchdirectory_show_url
    assert_response :success
  end

end
