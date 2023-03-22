require "application_system_test_case"

class LaptopsTest < ApplicationSystemTestCase
  setup do
    @laptop = laptops(:one)
  end

  test "visiting the index" do
    visit laptops_url
    assert_selector "h1", text: "Laptops"
  end

  test "should create laptop" do
    visit laptops_url
    click_on "New laptop"

    fill_in "Asset state", with: @laptop.asset_state
    fill_in "Brand model", with: @laptop.brand_model
    fill_in "Condition", with: @laptop.condition
    fill_in "Department", with: @laptop.department
    fill_in "Desk", with: @laptop.desk_id
    fill_in "Location", with: @laptop.location
    fill_in "Manufacturer", with: @laptop.manufacturer
    fill_in "Serial number", with: @laptop.serial_number
    fill_in "Zone", with: @laptop.zone
    click_on "Create Laptop"

    assert_text "Laptop was successfully created"
    click_on "Back"
  end

  test "should update Laptop" do
    visit laptop_url(@laptop)
    click_on "Edit this laptop", match: :first

    fill_in "Asset state", with: @laptop.asset_state
    fill_in "Brand model", with: @laptop.brand_model
    fill_in "Condition", with: @laptop.condition
    fill_in "Department", with: @laptop.department
    fill_in "Desk", with: @laptop.desk_id
    fill_in "Location", with: @laptop.location
    fill_in "Manufacturer", with: @laptop.manufacturer
    fill_in "Serial number", with: @laptop.serial_number
    fill_in "Zone", with: @laptop.zone
    click_on "Update Laptop"

    assert_text "Laptop was successfully updated"
    click_on "Back"
  end

  test "should destroy Laptop" do
    visit laptop_url(@laptop)
    click_on "Destroy this laptop", match: :first

    assert_text "Laptop was successfully destroyed"
  end
end
