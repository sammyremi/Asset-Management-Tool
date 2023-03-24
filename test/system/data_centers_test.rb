require "application_system_test_case"

class DataCentersTest < ApplicationSystemTestCase
  setup do
    @data_center = data_centers(:one)
  end

  test "visiting the index" do
    visit data_centers_url
    assert_selector "h1", text: "Data centers"
  end

  test "should create data center" do
    visit data_centers_url
    click_on "New data center"

    fill_in "Asset state", with: @data_center.asset_state
    fill_in "Brand model", with: @data_center.brand_model
    fill_in "Condition", with: @data_center.condition
    fill_in "Department", with: @data_center.department
    fill_in "Device type", with: @data_center.device_type
    fill_in "Location", with: @data_center.location
    fill_in "Manufacturer", with: @data_center.manufacturer
    fill_in "Serial number", with: @data_center.serial_number
    click_on "Create Data center"

    assert_text "Data center was successfully created"
    click_on "Back"
  end

  test "should update Data center" do
    visit data_center_url(@data_center)
    click_on "Edit this data center", match: :first

    fill_in "Asset state", with: @data_center.asset_state
    fill_in "Brand model", with: @data_center.brand_model
    fill_in "Condition", with: @data_center.condition
    fill_in "Department", with: @data_center.department
    fill_in "Device type", with: @data_center.device_type
    fill_in "Location", with: @data_center.location
    fill_in "Manufacturer", with: @data_center.manufacturer
    fill_in "Serial number", with: @data_center.serial_number
    click_on "Update Data center"

    assert_text "Data center was successfully updated"
    click_on "Back"
  end

  test "should destroy Data center" do
    visit data_center_url(@data_center)
    click_on "Destroy this data center", match: :first

    assert_text "Data center was successfully destroyed"
  end
end
