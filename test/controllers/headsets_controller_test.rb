require "test_helper"

class HeadsetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headset = headsets(:one)
  end

  test "should get index" do
    get headsets_url
    assert_response :success
  end

  test "should get new" do
    get new_headset_url
    assert_response :success
  end

  test "should create headset" do
    assert_difference("Headset.count") do
      post headsets_url, params: { headset: { asset_state: @headset.asset_state, brand_model: @headset.brand_model, condition: @headset.condition, department: @headset.department, desk_id: @headset.desk_id, location: @headset.location, manufacturer: @headset.manufacturer, serial_number: @headset.serial_number, zone: @headset.zone } }
    end

    assert_redirected_to headset_url(Headset.last)
  end

  test "should show headset" do
    get headset_url(@headset)
    assert_response :success
  end

  test "should get edit" do
    get edit_headset_url(@headset)
    assert_response :success
  end

  test "should update headset" do
    patch headset_url(@headset), params: { headset: { asset_state: @headset.asset_state, brand_model: @headset.brand_model, condition: @headset.condition, department: @headset.department, desk_id: @headset.desk_id, location: @headset.location, manufacturer: @headset.manufacturer, serial_number: @headset.serial_number, zone: @headset.zone } }
    assert_redirected_to headset_url(@headset)
  end

  test "should destroy headset" do
    assert_difference("Headset.count", -1) do
      delete headset_url(@headset)
    end

    assert_redirected_to headsets_url
  end
end
