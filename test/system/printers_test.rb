require "application_system_test_case"

class PrintersTest < ApplicationSystemTestCase
  setup do
    @printer = printers(:one)
  end

  test "visiting the index" do
    visit printers_url
    assert_selector "h1", text: "Printers"
  end

  test "should create printer" do
    visit printers_url
    click_on "New printer"

    fill_in "Asset state", with: @printer.asset_state
    fill_in "Brand model", with: @printer.brand_model
    fill_in "Condition", with: @printer.condition
    fill_in "Department", with: @printer.department
    fill_in "Location", with: @printer.location
    fill_in "Manufacturer", with: @printer.manufacturer
    fill_in "Serial number", with: @printer.serial_number
    fill_in "Zone", with: @printer.zone
    click_on "Create Printer"

    assert_text "Printer was successfully created"
    click_on "Back"
  end

  test "should update Printer" do
    visit printer_url(@printer)
    click_on "Edit this printer", match: :first

    fill_in "Asset state", with: @printer.asset_state
    fill_in "Brand model", with: @printer.brand_model
    fill_in "Condition", with: @printer.condition
    fill_in "Department", with: @printer.department
    fill_in "Location", with: @printer.location
    fill_in "Manufacturer", with: @printer.manufacturer
    fill_in "Serial number", with: @printer.serial_number
    fill_in "Zone", with: @printer.zone
    click_on "Update Printer"

    assert_text "Printer was successfully updated"
    click_on "Back"
  end

  test "should destroy Printer" do
    visit printer_url(@printer)
    click_on "Destroy this printer", match: :first

    assert_text "Printer was successfully destroyed"
  end
end
