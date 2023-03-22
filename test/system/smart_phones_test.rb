require "application_system_test_case"

class SmartPhonesTest < ApplicationSystemTestCase
  setup do
    @smart_phone = smart_phones(:one)
  end

  test "visiting the index" do
    visit smart_phones_url
    assert_selector "h1", text: "Smart phones"
  end

  test "should create smart phone" do
    visit smart_phones_url
    click_on "New smart phone"

    fill_in "Asset state", with: @smart_phone.asset_state
    fill_in "Brand model", with: @smart_phone.brand_model
    fill_in "Condition", with: @smart_phone.condition
    fill_in "Department", with: @smart_phone.department
    fill_in "Location", with: @smart_phone.location
    fill_in "Manufacturer", with: @smart_phone.manufacturer
    fill_in "Serial number", with: @smart_phone.serial_number
    fill_in "Zone", with: @smart_phone.zone
    click_on "Create Smart phone"

    assert_text "Smart phone was successfully created"
    click_on "Back"
  end

  test "should update Smart phone" do
    visit smart_phone_url(@smart_phone)
    click_on "Edit this smart phone", match: :first

    fill_in "Asset state", with: @smart_phone.asset_state
    fill_in "Brand model", with: @smart_phone.brand_model
    fill_in "Condition", with: @smart_phone.condition
    fill_in "Department", with: @smart_phone.department
    fill_in "Location", with: @smart_phone.location
    fill_in "Manufacturer", with: @smart_phone.manufacturer
    fill_in "Serial number", with: @smart_phone.serial_number
    fill_in "Zone", with: @smart_phone.zone
    click_on "Update Smart phone"

    assert_text "Smart phone was successfully updated"
    click_on "Back"
  end

  test "should destroy Smart phone" do
    visit smart_phone_url(@smart_phone)
    click_on "Destroy this smart phone", match: :first

    assert_text "Smart phone was successfully destroyed"
  end
end
