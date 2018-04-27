require 'test_helper'

class LogInControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get log_in_home_url
    assert_response :success
  end

  test "should get help" do
    get log_in_help_url
    assert_response :success
  end

end
