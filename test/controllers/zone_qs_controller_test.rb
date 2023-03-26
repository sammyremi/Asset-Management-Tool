require "test_helper"

class ZoneQsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone_q = zone_qs(:one)
  end

  test "should get index" do
    get zone_qs_url
    assert_response :success
  end

  test "should get new" do
    get new_zone_q_url
    assert_response :success
  end

  test "should create zone_q" do
    assert_difference("ZoneQ.count") do
      post zone_qs_url, params: { zone_q: { desk_id: @zone_q.desk_id, furniture: @zone_q.furniture, lan_port: @zone_q.lan_port, personnel: @zone_q.personnel, power_socket: @zone_q.power_socket, status: @zone_q.status } }
    end

    assert_redirected_to zone_q_url(ZoneQ.last)
  end

  test "should show zone_q" do
    get zone_q_url(@zone_q)
    assert_response :success
  end

  test "should get edit" do
    get edit_zone_q_url(@zone_q)
    assert_response :success
  end

  test "should update zone_q" do
    patch zone_q_url(@zone_q), params: { zone_q: { desk_id: @zone_q.desk_id, furniture: @zone_q.furniture, lan_port: @zone_q.lan_port, personnel: @zone_q.personnel, power_socket: @zone_q.power_socket, status: @zone_q.status } }
    assert_redirected_to zone_q_url(@zone_q)
  end

  test "should destroy zone_q" do
    assert_difference("ZoneQ.count", -1) do
      delete zone_q_url(@zone_q)
    end

    assert_redirected_to zone_qs_url
  end
end
