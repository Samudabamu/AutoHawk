require 'test_helper'

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cars_index_url
    assert_response :success
  end

  test "should get new" do
    get cars_new_url
    assert_response :success
  end

  test "should get create" do
    get cars_create_url
    assert_response :success
  end

  test "should get browse" do
    get cars_browse_url
    assert_response :success
  end

end