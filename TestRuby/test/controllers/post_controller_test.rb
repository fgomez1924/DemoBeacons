require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get viewpost" do
    get post_viewpost_url
    assert_response :success
  end

end
