require "application_system_test_case"

class MiceTest < ApplicationSystemTestCase
  setup do
    @mouse = mice(:one)
  end

  test "visiting the index" do
    visit mice_url
    assert_selector "h1", text: "Mice"
  end

  test "should create mouse" do
    visit mice_url
    click_on "New mouse"

    fill_in "Asset state", with: @mouse.asset_state
    fill_in "Brand model", with: @mouse.brand_model
    fill_in "Condition", with: @mouse.condition
    fill_in "Department", with: @mouse.department
    fill_in "Desk", with: @mouse.desk_id
    fill_in "Location", with: @mouse.location
    fill_in "Manufacturer", with: @mouse.manufacturer
    fill_in "Serial number", with: @mouse.serial_number
    fill_in "Zone", with: @mouse.zone
    click_on "Create Mouse"

    assert_text "Mouse was successfully created"
    click_on "Back"
  end

  test "should update Mouse" do
    visit mouse_url(@mouse)
    click_on "Edit this mouse", match: :first

    fill_in "Asset state", with: @mouse.asset_state
    fill_in "Brand model", with: @mouse.brand_model
    fill_in "Condition", with: @mouse.condition
    fill_in "Department", with: @mouse.department
    fill_in "Desk", with: @mouse.desk_id
    fill_in "Location", with: @mouse.location
    fill_in "Manufacturer", with: @mouse.manufacturer
    fill_in "Serial number", with: @mouse.serial_number
    fill_in "Zone", with: @mouse.zone
    click_on "Update Mouse"

    assert_text "Mouse was successfully updated"
    click_on "Back"
  end

  test "should destroy Mouse" do
    visit mouse_url(@mouse)
    click_on "Destroy this mouse", match: :first

    assert_text "Mouse was successfully destroyed"
  end
end
