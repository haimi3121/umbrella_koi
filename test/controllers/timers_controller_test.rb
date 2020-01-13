require 'test_helper'

class TimersControllerTest < ActionDispatch::IntegrationTest
  test "should get time" do
    get timers_time_url
    assert_response :success
  end

end
