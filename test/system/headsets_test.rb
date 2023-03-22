require "application_system_test_case"

class HeadsetsTest < ApplicationSystemTestCase
  setup do
    @headset = headsets(:one)
  end

  test "visiting the index" do
    visit headsets_url
    assert_selector "h1", text: "Headsets"
  end

  test "should create headset" do
    visit headsets_url
    click_on "New headset"

    fill_in "Asset state", with: @headset.asset_state
    fill_in "Brand model", with: @headset.brand_model
    fill_in "Condition", with: @headset.condition
    fill_in "Department", with: @headset.department
    fill_in "Desk", with: @headset.desk_id
    fill_in "Location", with: @headset.location
    fill_in "Manufacturer", with: @headset.manufacturer
    fill_in "Serial number", with: @headset.serial_number
    fill_in "Zone", with: @headset.zone
    click_on "Create Headset"

    assert_text "Headset was successfully created"
    click_on "Back"
  end

  test "should update Headset" do
    visit headset_url(@headset)
    click_on "Edit this headset", match: :first

    fill_in "Asset state", with: @headset.asset_state
    fill_in "Brand model", with: @headset.brand_model
    fill_in "Condition", with: @headset.condition
    fill_in "Department", with: @headset.department
    fill_in "Desk", with: @headset.desk_id
    fill_in "Location", with: @headset.location
    fill_in "Manufacturer", with: @headset.manufacturer
    fill_in "Serial number", with: @headset.serial_number
    fill_in "Zone", with: @headset.zone
    click_on "Update Headset"

    assert_text "Headset was successfully updated"
    click_on "Back"
  end

  test "should destroy Headset" do
    visit headset_url(@headset)
    click_on "Destroy this headset", match: :first

    assert_text "Headset was successfully destroyed"
  end
end
