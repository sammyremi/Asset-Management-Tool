class CreateZoneMs < ActiveRecord::Migration[7.0]
  def change
    create_table :zone_ms do |t|
      t.string :Personnel
      t.string :Desk_ID
      t.string :Status
      t.string :LAN_Port
      t.string :Power_Socket
      t.string :Furniture

      t.timestamps
    end
  end
end
