require 'test_helper'

class OurpastorControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get ourpastor_show_url
    assert_response :success
  end

end
