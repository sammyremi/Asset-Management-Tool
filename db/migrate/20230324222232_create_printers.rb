class CreatePrinters < ActiveRecord::Migration[7.0]
  def change
    create_table :printers do |t|
      t.string :manufacturer
      t.string :brand_model
      t.string :zone
      t.string :department
      t.string :condition
      t.string :asset_state
      t.string :serial_number
      t.string :location

      t.timestamps
    end
  end
end
