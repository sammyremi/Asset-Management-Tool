require "application_system_test_case"

class AiosTest < ApplicationSystemTestCase
  setup do
    @aio = aios(:one)
  end

  test "visiting the index" do
    visit aios_url
    assert_selector "h1", text: "Aios"
  end

  test "should create aio" do
    visit aios_url
    click_on "New aio"

    fill_in "Asset state", with: @aio.asset_state
    fill_in "Brand model", with: @aio.brand_model
    fill_in "Condition", with: @aio.condition
    fill_in "Department", with: @aio.department
    fill_in "Desk", with: @aio.desk_id
    fill_in "Location", with: @aio.location
    fill_in "Manufacturer", with: @aio.manufacturer
    fill_in "Serial number", with: @aio.serial_number
    fill_in "Ssd", with: @aio.ssd
    fill_in "Zone", with: @aio.zone
    click_on "Create Aio"

    assert_text "Aio was successfully created"
    click_on "Back"
  end

  test "should update Aio" do
    visit aio_url(@aio)
    click_on "Edit this aio", match: :first

    fill_in "Asset state", with: @aio.asset_state
    fill_in "Brand model", with: @aio.brand_model
    fill_in "Condition", with: @aio.condition
    fill_in "Department", with: @aio.department
    fill_in "Desk", with: @aio.desk_id
    fill_in "Location", with: @aio.location
    fill_in "Manufacturer", with: @aio.manufacturer
    fill_in "Serial number", with: @aio.serial_number
    fill_in "Ssd", with: @aio.ssd
    fill_in "Zone", with: @aio.zone
    click_on "Update Aio"

    assert_text "Aio was successfully updated"
    click_on "Back"
  end

  test "should destroy Aio" do
    visit aio_url(@aio)
    click_on "Destroy this aio", match: :first

    assert_text "Aio was successfully destroyed"
  end
end
