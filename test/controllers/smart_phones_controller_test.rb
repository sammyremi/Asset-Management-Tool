require "test_helper"

class SmartPhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smart_phone = smart_phones(:one)
  end

  test "should get index" do
    get smart_phones_url
    assert_response :success
  end

  test "should get new" do
    get new_smart_phone_url
    assert_response :success
  end

  test "should create smart_phone" do
    assert_difference("SmartPhone.count") do
      post smart_phones_url, params: { smart_phone: { asset_state: @smart_phone.asset_state, brand_model: @smart_phone.brand_model, condition: @smart_phone.condition, department: @smart_phone.department, location: @smart_phone.location, manufacturer: @smart_phone.manufacturer, serial_number: @smart_phone.serial_number, zone: @smart_phone.zone } }
    end

    assert_redirected_to smart_phone_url(SmartPhone.last)
  end

  test "should show smart_phone" do
    get smart_phone_url(@smart_phone)
    assert_response :success
  end

  test "should get edit" do
    get edit_smart_phone_url(@smart_phone)
    assert_response :success
  end

  test "should update smart_phone" do
    patch smart_phone_url(@smart_phone), params: { smart_phone: { asset_state: @smart_phone.asset_state, brand_model: @smart_phone.brand_model, condition: @smart_phone.condition, department: @smart_phone.department, location: @smart_phone.location, manufacturer: @smart_phone.manufacturer, serial_number: @smart_phone.serial_number, zone: @smart_phone.zone } }
    assert_redirected_to smart_phone_url(@smart_phone)
  end

  test "should destroy smart_phone" do
    assert_difference("SmartPhone.count", -1) do
      delete smart_phone_url(@smart_phone)
    end

    assert_redirected_to smart_phones_url
  end
end
