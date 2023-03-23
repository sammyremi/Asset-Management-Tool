require "test_helper"

class AccessPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_point = access_points(:one)
  end

  test "should get index" do
    get access_points_url
    assert_response :success
  end

  test "should get new" do
    get new_access_point_url
    assert_response :success
  end

  test "should create access_point" do
    assert_difference("AccessPoint.count") do
      post access_points_url, params: { access_point: { IP_Phone: @access_point.IP_Phone, asset_state: @access_point.asset_state, brand_model: @access_point.brand_model, condition: @access_point.condition, department: @access_point.department, location: @access_point.location, manufacturer: @access_point.manufacturer, serial_number: @access_point.serial_number, zone: @access_point.zone } }
    end

    assert_redirected_to access_point_url(AccessPoint.last)
  end

  test "should show access_point" do
    get access_point_url(@access_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_access_point_url(@access_point)
    assert_response :success
  end

  test "should update access_point" do
    patch access_point_url(@access_point), params: { access_point: { IP_Phone: @access_point.IP_Phone, asset_state: @access_point.asset_state, brand_model: @access_point.brand_model, condition: @access_point.condition, department: @access_point.department, location: @access_point.location, manufacturer: @access_point.manufacturer, serial_number: @access_point.serial_number, zone: @access_point.zone } }
    assert_redirected_to access_point_url(@access_point)
  end

  test "should destroy access_point" do
    assert_difference("AccessPoint.count", -1) do
      delete access_point_url(@access_point)
    end

    assert_redirected_to access_points_url
  end
end
