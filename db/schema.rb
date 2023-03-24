# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_03_24_222613) do
  create_table "aios", force: :cascade do |t|
=======
=======
>>>>>>> bc516a8 (create laptop, headset and phone models)
ActiveRecord::Schema[7.0].define(version: 2023_03_23_204406) do
  create_table "access_points", force: :cascade do |t|
    t.string "IP_Phone"
>>>>>>> 697a811 (first commit)
=======
ActiveRecord::Schema[7.0].define(version: 2023_03_23_204406) do
  create_table "access_points", force: :cascade do |t|
    t.string "IP_Phone"
=======
ActiveRecord::Schema[7.0].define(version: 2023_03_24_222613) do
  create_table "aios", force: :cascade do |t|
>>>>>>> cf5d622 (DB table: aio, monitor, datacenter, printer)
>>>>>>> efb93f5 (DB table: aio, monitor, datacenter, printer)
    t.string "manufacturer"
    t.string "brand_model"
    t.string "zone"
    t.string "department"
<<<<<<< HEAD
<<<<<<< HEAD
    t.string "desk_id"
    t.string "condition"
    t.string "asset_state"
    t.string "serial_number"
    t.string "location"
    t.string "ssd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_centers", force: :cascade do |t|
    t.string "device_type"
    t.string "brand_model"
    t.string "manufacturer"
    t.string "department"
    t.string "condition"
    t.string "asset_state"
    t.string "serial_number"
=======
    t.string "condition"
    t.string "asset_state"
    t.integer "serial_number"
>>>>>>> 697a811 (first commit)
=======
    t.string "condition"
    t.string "asset_state"
    t.integer "serial_number"
=======
    t.string "desk_id"
    t.string "condition"
    t.string "asset_state"
    t.string "serial_number"
    t.string "location"
    t.string "ssd"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_centers", force: :cascade do |t|
    t.string "device_type"
    t.string "brand_model"
    t.string "manufacturer"
    t.string "department"
    t.string "condition"
    t.string "asset_state"
    t.string "serial_number"
>>>>>>> cf5d622 (DB table: aio, monitor, datacenter, printer)
>>>>>>> efb93f5 (DB table: aio, monitor, datacenter, printer)
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
<<<<<<< HEAD
  create_table "display_monitors", force: :cascade do |t|
=======
  create_table "ip_phones", force: :cascade do |t|
>>>>>>> 697a811 (first commit)
=======
  create_table "ip_phones", force: :cascade do |t|
=======
  create_table "display_monitors", force: :cascade do |t|
>>>>>>> cf5d622 (DB table: aio, monitor, datacenter, printer)
>>>>>>> efb93f5 (DB table: aio, monitor, datacenter, printer)
    t.string "manufacturer"
    t.string "brand_model"
    t.string "zone"
    t.string "department"
<<<<<<< HEAD
<<<<<<< HEAD
    t.string "desk_id"
    t.string "condition"
    t.string "asset_state"
    t.string "serial_number"
=======
    t.string "condition"
    t.string "asset_state"
    t.integer "serial_number"
>>>>>>> 697a811 (first commit)
=======
    t.string "condition"
    t.string "asset_state"
    t.integer "serial_number"
=======
    t.string "desk_id"
    t.string "condition"
    t.string "asset_state"
    t.string "serial_number"
>>>>>>> cf5d622 (DB table: aio, monitor, datacenter, printer)
>>>>>>> efb93f5 (DB table: aio, monitor, datacenter, printer)
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
<<<<<<< HEAD
  create_table "headsets", force: :cascade do |t|
=======
=======
>>>>>>> efb93f5 (DB table: aio, monitor, datacenter, printer)
  create_table "keyboards", force: :cascade do |t|
<<<<<<< HEAD
>>>>>>> 697a811 (first commit)
=======
=======
ActiveRecord::Schema[7.0].define(version: 2023_03_22_215445) do
=======
>>>>>>> cf5d622 (DB table: aio, monitor, datacenter, printer)
  create_table "headsets", force: :cascade do |t|
>>>>>>> 924e57d (create laptop, headset and phone models)
>>>>>>> bc516a8 (create laptop, headset and phone models)
    t.string "manufacturer"
    t.string "brand_model"
    t.string "zone"
    t.string "department"
    t.string "desk_id"
    t.string "condition"
    t.string "asset_state"
    t.integer "serial_number"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
<<<<<<< HEAD
  create_table "laptops", force: :cascade do |t|
=======
  create_table "mice", force: :cascade do |t|
>>>>>>> 697a811 (first commit)
=======
  create_table "mice", force: :cascade do |t|
=======
  create_table "laptops", force: :cascade do |t|
>>>>>>> 924e57d (create laptop, headset and phone models)
>>>>>>> bc516a8 (create laptop, headset and phone models)
    t.string "manufacturer"
    t.string "brand_model"
    t.string "zone"
    t.string "department"
    t.string "desk_id"
    t.string "condition"
    t.string "asset_state"
    t.integer "serial_number"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  create_table "printers", force: :cascade do |t|
    t.string "manufacturer"
    t.string "brand_model"
    t.string "zone"
    t.string "department"
    t.string "condition"
    t.string "asset_state"
    t.string "serial_number"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
=======
>>>>>>> bc516a8 (create laptop, headset and phone models)
=======
=======
=======
  create_table "printers", force: :cascade do |t|
    t.string "manufacturer"
    t.string "brand_model"
    t.string "zone"
    t.string "department"
    t.string "condition"
    t.string "asset_state"
    t.string "serial_number"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

>>>>>>> cf5d622 (DB table: aio, monitor, datacenter, printer)
>>>>>>> efb93f5 (DB table: aio, monitor, datacenter, printer)
  create_table "smart_phones", force: :cascade do |t|
    t.string "manufacturer"
    t.string "brand_model"
    t.string "zone"
    t.string "department"
    t.string "condition"
    t.string "asset_state"
    t.integer "serial_number"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
=======
>>>>>>> 697a811 (first commit)
=======
>>>>>>> 924e57d (create laptop, headset and phone models)
>>>>>>> bc516a8 (create laptop, headset and phone models)
end
