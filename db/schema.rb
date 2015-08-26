# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150826135931) do

  create_table "chassis", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chassis", ["name"], name: "index_chassis_on_name", unique: true

  create_table "chassis_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chassis_types", ["name"], name: "index_chassis_types_on_name", unique: true

  create_table "datacenter_rack_locations", force: true do |t|
    t.integer  "datacenter_rack_id"
    t.integer  "datacenter_id"
    t.integer  "floor"
    t.integer  "row"
    t.integer  "cell"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "datacenter_rack_locations", ["datacenter_id", "floor", "row", "cell"], name: "index_datacenter_rack_locations_on_unique_location", unique: true
  add_index "datacenter_rack_locations", ["datacenter_id"], name: "index_datacenter_rack_locations_on_datacenter_id"
  add_index "datacenter_rack_locations", ["datacenter_rack_id"], name: "index_datacenter_rack_locations_on_datacenter_rack_id", unique: true

  create_table "datacenter_rack_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "datacenter_rack_types", ["name"], name: "index_datacenter_rack_types_on_name", unique: true

  create_table "datacenter_racks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "custom_prefix"
    t.integer  "datacenter_rack_type_id"
  end

  add_index "datacenter_racks", ["name"], name: "index_datacenter_racks_on_name"

  create_table "datacenters", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rack_prefix"
    t.integer  "max_floors"
    t.integer  "max_rows_per_floor"
    t.integer  "max_cells_per_row"
  end

  add_index "datacenters", ["name"], name: "index_datacenters_on_name", unique: true

  create_table "hosts", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hosts", ["name"], name: "index_hosts_on_name", unique: true

  create_table "pdu_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pdu_types", ["name"], name: "index_pdu_types_on_name", unique: true

  create_table "pdus", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pdus", ["name"], name: "index_pdus_on_name", unique: true

  create_table "psu_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "psu_types", ["name"], name: "index_psu_types_on_name", unique: true

  create_table "psus", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "psus", ["name"], name: "index_psus_on_name", unique: true

end
