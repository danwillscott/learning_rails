require 'test_helper'

class LunchersControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get lunchers_user_url
    assert_response :success
  end

  test "should get index" do
    get lunchers_index_url
    assert_response :success
  end

  test "should get new" do
    get lunchers_new_url
    assert_response :success
  end

  test "should get home" do
    get lunchers_home_url
    assert_response :success
  end

  test "should get spaceship" do
    get lunchers_spaceship_url
    assert_response :success
  end

  test "should get tacotruck" do
    get lunchers_tacotruck_url
    assert_response :success
  end

  test "should get lightbulb" do
    get lunchers_lightbulb_url
    assert_response :success
  end

end
