require 'test_helper'

class ForeignLanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get foreign_languages_index_url
    assert_response :success
  end

end
