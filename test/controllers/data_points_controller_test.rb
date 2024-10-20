require "test_helper"

class DataPointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get data_points_index_url
    assert_response :success
  end

  test "should get new" do
    get data_points_new_url
    assert_response :success
  end

  test "should get create" do
    get data_points_create_url
    assert_response :success
  end
end
