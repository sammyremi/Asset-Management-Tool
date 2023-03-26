require "application_system_test_case"

class KeyboardsTest < ApplicationSystemTestCase
  setup do
    @keyboard = keyboards(:one)
  end

  test "visiting the index" do
    visit keyboards_url
    assert_selector "h1", text: "Keyboards"
  end

  test "should create keyboard" do
    visit keyboards_url
    click_on "New keyboard"

    fill_in "Asset state", with: @keyboard.asset_state
    fill_in "Brand model", with: @keyboard.brand_model
    fill_in "Condition", with: @keyboard.condition
    fill_in "Department", with: @keyboard.department
    fill_in "Desk", with: @keyboard.desk_id
    fill_in "Location", with: @keyboard.location
    fill_in "Manufacturer", with: @keyboard.manufacturer
    fill_in "Serial number", with: @keyboard.serial_number
    fill_in "Zone", with: @keyboard.zone
    click_on "Create Keyboard"

    assert_text "Keyboard was successfully created"
    click_on "Back"
  end

  test "should update Keyboard" do
    visit keyboard_url(@keyboard)
    click_on "Edit this keyboard", match: :first

    fill_in "Asset state", with: @keyboard.asset_state
    fill_in "Brand model", with: @keyboard.brand_model
    fill_in "Condition", with: @keyboard.condition
    fill_in "Department", with: @keyboard.department
    fill_in "Desk", with: @keyboard.desk_id
    fill_in "Location", with: @keyboard.location
    fill_in "Manufacturer", with: @keyboard.manufacturer
    fill_in "Serial number", with: @keyboard.serial_number
    fill_in "Zone", with: @keyboard.zone
    click_on "Update Keyboard"

    assert_text "Keyboard was successfully updated"
    click_on "Back"
  end

  test "should destroy Keyboard" do
    visit keyboard_url(@keyboard)
    click_on "Destroy this keyboard", match: :first

    assert_text "Keyboard was successfully destroyed"
  end
end
