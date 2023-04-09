require "test_helper"

class ZoneJsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_j = zone_js(:one)
  end

  test "should get index" do
    get zone_js_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_j_url
    assert_response :success
  end

  test "should create zone_j" do
    assert_difference("ZoneJ.count") do
      post zone_js_url, params: { zone_j: { Desk_ID: @zone_j.Desk_ID, Furniture: @zone_j.Furniture, LAN_Port: @zone_j.LAN_Port, Personnel: @zone_j.Personnel, Power_Socket: @zone_j.Power_Socket, Status: @zone_j.Status } }
    end

    assert_redirected_to zone_j_url(ZoneJ.last)
  end

  test "should show zone_j" do
    get zone_j_url(@zone_j)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_j_url(@zone_j)
    assert_response :success
  end

  test "should update zone_j" do
    patch zone_j_url(@zone_j), params: { zone_j: { Desk_ID: @zone_j.Desk_ID, Furniture: @zone_j.Furniture, LAN_Port: @zone_j.LAN_Port, Personnel: @zone_j.Personnel, Power_Socket: @zone_j.Power_Socket, Status: @zone_j.Status } }
    assert_redirected_to zone_j_url(@zone_j)
  end

  test "should destroy zone_j" do
    assert_difference("ZoneJ.count", -1) do
      delete zone_j_url(@zone_j)
    end

    assert_redirected_to zone_js_url
  end
end
