class CreateDataCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :data_centers do |t|
      t.string :device_type
      t.string :brand_model
      t.string :manufacturer
      t.string :department
      t.string :condition
      t.string :asset_state
      t.string :serial_number
      t.string :location

      t.timestamps
    end
  end
end
