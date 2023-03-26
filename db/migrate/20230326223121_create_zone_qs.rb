class CreateZoneQs < ActiveRecord::Migration[7.0]
  def change
    create_table :zone_qs do |t|
      t.string :personnel
      t.string :desk_id
      t.string :status
      t.string :lan_port
      t.string :power_socket
      t.string :furniture

      t.timestamps
    end
  end
end
