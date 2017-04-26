require 'test_helper'

class ServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get service_show_url
    assert_response :success
  end

end
