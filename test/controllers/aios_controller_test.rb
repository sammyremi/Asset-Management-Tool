require "test_helper"

class AiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aio = aios(:one)
  end

  test "should get index" do
    get aios_url
    assert_response :success
  end

  test "should get new" do
    get new_aio_url
    assert_response :success
  end

  test "should create aio" do
    assert_difference("Aio.count") do
      post aios_url, params: { aio: { asset_state: @aio.asset_state, brand_model: @aio.brand_model, condition: @aio.condition, department: @aio.department, desk_id: @aio.desk_id, location: @aio.location, manufacturer: @aio.manufacturer, serial_number: @aio.serial_number, ssd: @aio.ssd, zone: @aio.zone } }
    end

    assert_redirected_to aio_url(Aio.last)
  end

  test "should show aio" do
    get aio_url(@aio)
    assert_response :success
  end

  test "should get edit" do
    get edit_aio_url(@aio)
    assert_response :success
  end

  test "should update aio" do
    patch aio_url(@aio), params: { aio: { asset_state: @aio.asset_state, brand_model: @aio.brand_model, condition: @aio.condition, department: @aio.department, desk_id: @aio.desk_id, location: @aio.location, manufacturer: @aio.manufacturer, serial_number: @aio.serial_number, ssd: @aio.ssd, zone: @aio.zone } }
    assert_redirected_to aio_url(@aio)
  end

  test "should destroy aio" do
    assert_difference("Aio.count", -1) do
      delete aio_url(@aio)
    end

    assert_redirected_to aios_url
  end
end
