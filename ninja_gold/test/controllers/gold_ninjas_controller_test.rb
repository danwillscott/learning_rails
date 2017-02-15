require 'test_helper'

class GoldNinjasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gold_ninjas_index_url
    assert_response :success
  end

end
