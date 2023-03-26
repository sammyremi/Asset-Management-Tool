require "test_helper"

class KeyboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @keyboard = keyboards(:one)
  end

  test "should get index" do
    get keyboards_url
    assert_response :success
  end

  test "should get new" do
    get new_keyboard_url
    assert_response :success
  end

  test "should create keyboard" do
    assert_difference("Keyboard.count") do
      post keyboards_url, params: { keyboard: { asset_state: @keyboard.asset_state, brand_model: @keyboard.brand_model, condition: @keyboard.condition, department: @keyboard.department, desk_id: @keyboard.desk_id, location: @keyboard.location, manufacturer: @keyboard.manufacturer, serial_number: @keyboard.serial_number, zone: @keyboard.zone } }
    end

    assert_redirected_to keyboard_url(Keyboard.last)
  end

  test "should show keyboard" do
    get keyboard_url(@keyboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_keyboard_url(@keyboard)
    assert_response :success
  end

  test "should update keyboard" do
    patch keyboard_url(@keyboard), params: { keyboard: { asset_state: @keyboard.asset_state, brand_model: @keyboard.brand_model, condition: @keyboard.condition, department: @keyboard.department, desk_id: @keyboard.desk_id, location: @keyboard.location, manufacturer: @keyboard.manufacturer, serial_number: @keyboard.serial_number, zone: @keyboard.zone } }
    assert_redirected_to keyboard_url(@keyboard)
  end

  test "should destroy keyboard" do
    assert_difference("Keyboard.count", -1) do
      delete keyboard_url(@keyboard)
    end

    assert_redirected_to keyboards_url
  end
end
