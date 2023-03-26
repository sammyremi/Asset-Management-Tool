require "test_helper"

class IpPhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ip_phone = ip_phones(:one)
  end

  test "should get index" do
    get ip_phones_url
    assert_response :success
  end

  test "should get new" do
    get new_ip_phone_url
    assert_response :success
  end

  test "should create ip_phone" do
    assert_difference("IpPhone.count") do
      post ip_phones_url, params: { ip_phone: { asset_state: @ip_phone.asset_state, brand_model: @ip_phone.brand_model, condition: @ip_phone.condition, department: @ip_phone.department, location: @ip_phone.location, manufacturer: @ip_phone.manufacturer, serial_number: @ip_phone.serial_number, zone: @ip_phone.zone } }
    end

    assert_redirected_to ip_phone_url(IpPhone.last)
  end

  test "should show ip_phone" do
    get ip_phone_url(@ip_phone)
    assert_response :success
  end

  test "should get edit" do
    get edit_ip_phone_url(@ip_phone)
    assert_response :success
  end

  test "should update ip_phone" do
    patch ip_phone_url(@ip_phone), params: { ip_phone: { asset_state: @ip_phone.asset_state, brand_model: @ip_phone.brand_model, condition: @ip_phone.condition, department: @ip_phone.department, location: @ip_phone.location, manufacturer: @ip_phone.manufacturer, serial_number: @ip_phone.serial_number, zone: @ip_phone.zone } }
    assert_redirected_to ip_phone_url(@ip_phone)
  end

  test "should destroy ip_phone" do
    assert_difference("IpPhone.count", -1) do
      delete ip_phone_url(@ip_phone)
    end

    assert_redirected_to ip_phones_url
  end
end
