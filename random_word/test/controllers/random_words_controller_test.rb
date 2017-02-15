require 'test_helper'

class RandomWordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get random_words_index_url
    assert_response :success
  end

end
