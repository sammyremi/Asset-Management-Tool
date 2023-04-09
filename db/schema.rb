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

ActiveRecord::Schema[7.0].define(version: 2023_03_25_163651) do
  create_table "access_points", force: :cascade do |t|
    t.string "IP_Phone"
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

  create_table "ip_phones", force: :cascade do |t|
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

  create_table "keyboards", force: :cascade do |t|
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

  create_table "mice", force: :cascade do |t|
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

  create_table "zone_js", force: :cascade do |t|
    t.string "Personnel"
    t.string "Desk_ID"
    t.string "Status"
    t.string "LAN_Port"
    t.string "Power_Socket"
    t.string "Furniture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zone_ks", force: :cascade do |t|
    t.string "Personnel"
    t.string "Desk_ID"
    t.string "Status"
    t.string "LAN_Port"
    t.string "Power_Socket"
    t.string "Furniture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zone_ls", force: :cascade do |t|
    t.string "Personnel"
    t.string "Desk_ID"
    t.string "Status"
    t.string "LAN_Port"
    t.string "Power_Socket"
    t.string "Furniture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zone_ms", force: :cascade do |t|
    t.string "Personnel"
    t.string "Desk_ID"
    t.string "Status"
    t.string "LAN_Port"
    t.string "Power_Socket"
    t.string "Furniture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end