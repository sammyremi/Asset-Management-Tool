require "application_system_test_case"

class DisplayMonitorsTest < ApplicationSystemTestCase
  setup do
    @display_monitor = display_monitors(:one)
  end

  test "visiting the index" do
    visit display_monitors_url
    assert_selector "h1", text: "Display monitors"
  end

  test "should create display monitor" do
    visit display_monitors_url
    click_on "New display monitor"

    fill_in "Asset state", with: @display_monitor.asset_state
    fill_in "Brand model", with: @display_monitor.brand_model
    fill_in "Condition", with: @display_monitor.condition
    fill_in "Department", with: @display_monitor.department
    fill_in "Desk", with: @display_monitor.desk_id
    fill_in "Location", with: @display_monitor.location
    fill_in "Manufacturer", with: @display_monitor.manufacturer
    fill_in "Serial number", with: @display_monitor.serial_number
    fill_in "Zone", with: @display_monitor.zone
    click_on "Create Display monitor"

    assert_text "Display monitor was successfully created"
    click_on "Back"
  end

  test "should update Display monitor" do
    visit display_monitor_url(@display_monitor)
    click_on "Edit this display monitor", match: :first

    fill_in "Asset state", with: @display_monitor.asset_state
    fill_in "Brand model", with: @display_monitor.brand_model
    fill_in "Condition", with: @display_monitor.condition
    fill_in "Department", with: @display_monitor.department
    fill_in "Desk", with: @display_monitor.desk_id
    fill_in "Location", with: @display_monitor.location
    fill_in "Manufacturer", with: @display_monitor.manufacturer
    fill_in "Serial number", with: @display_monitor.serial_number
    fill_in "Zone", with: @display_monitor.zone
    click_on "Update Display monitor"

    assert_text "Display monitor was successfully updated"
    click_on "Back"
  end

  test "should destroy Display monitor" do
    visit display_monitor_url(@display_monitor)
    click_on "Destroy this display monitor", match: :first

    assert_text "Display monitor was successfully destroyed"
  end
end
