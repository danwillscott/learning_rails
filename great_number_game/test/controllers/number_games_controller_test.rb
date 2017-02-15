require 'test_helper'

class NumberGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get number_games_index_url
    assert_response :success
  end

end
