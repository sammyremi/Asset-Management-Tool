require "test_helper"

class MiceControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mouse = mice(:one)
  end

  test "should get index" do
    get mice_url
    assert_response :success
  end

  test "should get new" do
    get new_mouse_url
    assert_response :success
  end

  test "should create mouse" do
    assert_difference("Mouse.count") do
      post mice_url, params: { mouse: { asset_state: @mouse.asset_state, brand_model: @mouse.brand_model, condition: @mouse.condition, department: @mouse.department, desk_id: @mouse.desk_id, location: @mouse.location, manufacturer: @mouse.manufacturer, serial_number: @mouse.serial_number, zone: @mouse.zone } }
    end

    assert_redirected_to mouse_url(Mouse.last)
  end

  test "should show mouse" do
    get mouse_url(@mouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_mouse_url(@mouse)
    assert_response :success
  end

  test "should update mouse" do
    patch mouse_url(@mouse), params: { mouse: { asset_state: @mouse.asset_state, brand_model: @mouse.brand_model, condition: @mouse.condition, department: @mouse.department, desk_id: @mouse.desk_id, location: @mouse.location, manufacturer: @mouse.manufacturer, serial_number: @mouse.serial_number, zone: @mouse.zone } }
    assert_redirected_to mouse_url(@mouse)
  end

  test "should destroy mouse" do
    assert_difference("Mouse.count", -1) do
      delete mouse_url(@mouse)
    end

    assert_redirected_to mice_url
  end
end
