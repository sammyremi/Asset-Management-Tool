require "application_system_test_case"

class ZoneJsTest < ApplicationSystemTestCase
  setup do
    @zone_j = zone_js(:one)
  end

  test "visiting the index" do
    visit zone_js_url
    assert_selector "h1", text: "Zone js"
  end

  test "should create zone j" do
    visit zone_js_url
    click_on "New zone j"

    fill_in "Desk id", with: @zone_j.Desk_ID
    fill_in "Furniture", with: @zone_j.Furniture
    fill_in "Lan port", with: @zone_j.LAN_Port
    fill_in "Personnel", with: @zone_j.Personnel
    fill_in "Power socket", with: @zone_j.Power_Socket
    fill_in "Status", with: @zone_j.Status
    click_on "Create Zone j"

    assert_text "Zone j was successfully created"
    click_on "Back"
  end

  test "should update Zone j" do
    visit zone_j_url(@zone_j)
    click_on "Edit this zone j", match: :first

    fill_in "Desk id", with: @zone_j.Desk_ID
    fill_in "Furniture", with: @zone_j.Furniture
    fill_in "Lan port", with: @zone_j.LAN_Port
    fill_in "Personnel", with: @zone_j.Personnel
    fill_in "Power socket", with: @zone_j.Power_Socket
    fill_in "Status", with: @zone_j.Status
    click_on "Update Zone j"

    assert_text "Zone j was successfully updated"
    click_on "Back"
  end

  test "should destroy Zone j" do
    visit zone_j_url(@zone_j)
    click_on "Destroy this zone j", match: :first

    assert_text "Zone j was successfully destroyed"
  end
end
