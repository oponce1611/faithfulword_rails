require 'test_helper'

class TermsandconditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get termsandconditions_show_url
    assert_response :success
  end

end
