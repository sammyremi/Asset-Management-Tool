json.extract! data_center, :id, :device_type, :brand_model, :manufacturer, :department, :condition, :asset_state, :serial_number, :location, :created_at, :updated_at
json.url data_center_url(data_center, format: :json)
