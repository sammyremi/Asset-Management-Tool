require "test_helper"

class PrintersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @printer = printers(:one)
  end

  test "should get index" do
    get printers_url
    assert_response :success
  end

  test "should get new" do
    get new_printer_url
    assert_response :success
  end

  test "should create printer" do
    assert_difference("Printer.count") do
      post printers_url, params: { printer: { asset_state: @printer.asset_state, brand_model: @printer.brand_model, condition: @printer.condition, department: @printer.department, location: @printer.location, manufacturer: @printer.manufacturer, serial_number: @printer.serial_number, zone: @printer.zone } }
    end

    assert_redirected_to printer_url(Printer.last)
  end

  test "should show printer" do
    get printer_url(@printer)
    assert_response :success
  end

  test "should get edit" do
    get edit_printer_url(@printer)
    assert_response :success
  end

  test "should update printer" do
    patch printer_url(@printer), params: { printer: { asset_state: @printer.asset_state, brand_model: @printer.brand_model, condition: @printer.condition, department: @printer.department, location: @printer.location, manufacturer: @printer.manufacturer, serial_number: @printer.serial_number, zone: @printer.zone } }
    assert_redirected_to printer_url(@printer)
  end

  test "should destroy printer" do
    assert_difference("Printer.count", -1) do
      delete printer_url(@printer)
    end

    assert_redirected_to printers_url
  end
end
