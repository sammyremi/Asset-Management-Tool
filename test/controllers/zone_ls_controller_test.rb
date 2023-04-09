require "test_helper"

class ZoneLsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_l = zone_ls(:one)
  end

  test "should get index" do
    get zone_ls_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_l_url
    assert_response :success
  end

  test "should create zone_l" do
    assert_difference("ZoneL.count") do
      post zone_ls_url, params: { zone_l: { Desk_ID: @zone_l.Desk_ID, Furniture: @zone_l.Furniture, LAN_Port: @zone_l.LAN_Port, Personnel: @zone_l.Personnel, Power_Socket: @zone_l.Power_Socket, Status: @zone_l.Status } }
    end

    assert_redirected_to zone_l_url(ZoneL.last)
  end

  test "should show zone_l" do
    get zone_l_url(@zone_l)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_l_url(@zone_l)
    assert_response :success
  end

  test "should update zone_l" do
    patch zone_l_url(@zone_l), params: { zone_l: { Desk_ID: @zone_l.Desk_ID, Furniture: @zone_l.Furniture, LAN_Port: @zone_l.LAN_Port, Personnel: @zone_l.Personnel, Power_Socket: @zone_l.Power_Socket, Status: @zone_l.Status } }
    assert_redirected_to zone_l_url(@zone_l)
  end

  test "should destroy zone_l" do
    assert_difference("ZoneL.count", -1) do
      delete zone_l_url(@zone_l)
    end

    assert_redirected_to zone_ls_url
  end
end
