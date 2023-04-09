require "test_helper"

class ZoneKsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_k = zone_ks(:one)
  end

  test "should get index" do
    get zone_ks_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_k_url
    assert_response :success
  end

  test "should create zone_k" do
    assert_difference("ZoneK.count") do
      post zone_ks_url, params: { zone_k: { Desk_ID: @zone_k.Desk_ID, Furniture: @zone_k.Furniture, LAN_Port: @zone_k.LAN_Port, Personnel: @zone_k.Personnel, Power_Socket: @zone_k.Power_Socket, Status: @zone_k.Status } }
    end

    assert_redirected_to zone_k_url(ZoneK.last)
  end

  test "should show zone_k" do
    get zone_k_url(@zone_k)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_k_url(@zone_k)
    assert_response :success
  end

  test "should update zone_k" do
    patch zone_k_url(@zone_k), params: { zone_k: { Desk_ID: @zone_k.Desk_ID, Furniture: @zone_k.Furniture, LAN_Port: @zone_k.LAN_Port, Personnel: @zone_k.Personnel, Power_Socket: @zone_k.Power_Socket, Status: @zone_k.Status } }
    assert_redirected_to zone_k_url(@zone_k)
  end

  test "should destroy zone_k" do
    assert_difference("ZoneK.count", -1) do
      delete zone_k_url(@zone_k)
    end

    assert_redirected_to zone_ks_url
  end
end
