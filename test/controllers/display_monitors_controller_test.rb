require "test_helper"

class DisplayMonitorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @display_monitor = display_monitors(:one)
  end

  test "should get index" do
    get display_monitors_url
    assert_response :success
  end

  test "should get new" do
    get new_display_monitor_url
    assert_response :success
  end

  test "should create display_monitor" do
    assert_difference("DisplayMonitor.count") do
      post display_monitors_url, params: { display_monitor: { asset_state: @display_monitor.asset_state, brand_model: @display_monitor.brand_model, condition: @display_monitor.condition, department: @display_monitor.department, desk_id: @display_monitor.desk_id, location: @display_monitor.location, manufacturer: @display_monitor.manufacturer, serial_number: @display_monitor.serial_number, zone: @display_monitor.zone } }
    end

    assert_redirected_to display_monitor_url(DisplayMonitor.last)
  end

  test "should show display_monitor" do
    get display_monitor_url(@display_monitor)
    assert_response :success
  end

  test "should get edit" do
    get edit_display_monitor_url(@display_monitor)
    assert_response :success
  end

  test "should update display_monitor" do
    patch display_monitor_url(@display_monitor), params: { display_monitor: { asset_state: @display_monitor.asset_state, brand_model: @display_monitor.brand_model, condition: @display_monitor.condition, department: @display_monitor.department, desk_id: @display_monitor.desk_id, location: @display_monitor.location, manufacturer: @display_monitor.manufacturer, serial_number: @display_monitor.serial_number, zone: @display_monitor.zone } }
    assert_redirected_to display_monitor_url(@display_monitor)
  end

  test "should destroy display_monitor" do
    assert_difference("DisplayMonitor.count", -1) do
      delete display_monitor_url(@display_monitor)
    end

    assert_redirected_to display_monitors_url
  end
end
