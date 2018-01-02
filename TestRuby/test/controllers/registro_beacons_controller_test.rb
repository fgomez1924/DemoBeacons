require 'test_helper'

class RegistroBeaconsControllerTest < ActionDispatch::IntegrationTest
  test "should get RegistroBeacons" do
    get registro_beacons_RegistroBeacons_url
    assert_response :success
  end

end
