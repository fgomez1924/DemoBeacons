require 'test_helper'

class PatoqloControllerTest < ActionDispatch::IntegrationTest
  test "should get PATOQLO" do
    get patoqlo_PATOQLO_url
    assert_response :success
  end

end
