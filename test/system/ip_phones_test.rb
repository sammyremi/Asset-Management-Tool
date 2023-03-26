require "application_system_test_case"

class IpPhonesTest < ApplicationSystemTestCase
  setup do
    @ip_phone = ip_phones(:one)
  end

  test "visiting the index" do
    visit ip_phones_url
    assert_selector "h1", text: "Ip phones"
  end

  test "should create ip phone" do
    visit ip_phones_url
    click_on "New ip phone"

    fill_in "Asset state", with: @ip_phone.asset_state
    fill_in "Brand model", with: @ip_phone.brand_model
    fill_in "Condition", with: @ip_phone.condition
    fill_in "Department", with: @ip_phone.department
    fill_in "Location", with: @ip_phone.location
    fill_in "Manufacturer", with: @ip_phone.manufacturer
    fill_in "Serial number", with: @ip_phone.serial_number
    fill_in "Zone", with: @ip_phone.zone
    click_on "Create Ip phone"

    assert_text "Ip phone was successfully created"
    click_on "Back"
  end

  test "should update Ip phone" do
    visit ip_phone_url(@ip_phone)
    click_on "Edit this ip phone", match: :first

    fill_in "Asset state", with: @ip_phone.asset_state
    fill_in "Brand model", with: @ip_phone.brand_model
    fill_in "Condition", with: @ip_phone.condition
    fill_in "Department", with: @ip_phone.department
    fill_in "Location", with: @ip_phone.location
    fill_in "Manufacturer", with: @ip_phone.manufacturer
    fill_in "Serial number", with: @ip_phone.serial_number
    fill_in "Zone", with: @ip_phone.zone
    click_on "Update Ip phone"

    assert_text "Ip phone was successfully updated"
    click_on "Back"
  end

  test "should destroy Ip phone" do
    visit ip_phone_url(@ip_phone)
    click_on "Destroy this ip phone", match: :first

    assert_text "Ip phone was successfully destroyed"
  end
end
