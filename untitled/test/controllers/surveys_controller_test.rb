require 'test_helper'

class SurveysControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get surveys_home_url
    assert_response :success
  end

  test "should get complete" do
    get surveys_complete_url
    assert_response :success
  end

end
