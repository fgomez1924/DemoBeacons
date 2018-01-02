require 'test_helper'

class HolaControllerTest < ActionDispatch::IntegrationTest
  test "should get Hola" do
    get hola_Hola_url
    assert_response :success
  end

end
