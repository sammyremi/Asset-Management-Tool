require "test_helper"

class ZoneMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_m = zone_ms(:one)
  end

  test "should get index" do
    get zone_ms_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_m_url
    assert_response :success
  end

  test "should create zone_m" do
    assert_difference("ZoneM.count") do
      post zone_ms_url, params: { zone_m: { Desk_ID: @zone_m.Desk_ID, Furniture: @zone_m.Furniture, LAN_Port: @zone_m.LAN_Port, Personnel: @zone_m.Personnel, Power_Socket: @zone_m.Power_Socket, Status: @zone_m.Status } }
    end

    assert_redirected_to zone_m_url(ZoneM.last)
  end

  test "should show zone_m" do
    get zone_m_url(@zone_m)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_m_url(@zone_m)
    assert_response :success
  end

  test "should update zone_m" do
    patch zone_m_url(@zone_m), params: { zone_m: { Desk_ID: @zone_m.Desk_ID, Furniture: @zone_m.Furniture, LAN_Port: @zone_m.LAN_Port, Personnel: @zone_m.Personnel, Power_Socket: @zone_m.Power_Socket, Status: @zone_m.Status } }
    assert_redirected_to zone_m_url(@zone_m)
  end

  test "should destroy zone_m" do
    assert_difference("ZoneM.count", -1) do
      delete zone_m_url(@zone_m)
    end

    assert_redirected_to zone_ms_url
  end
end
