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

ActiveRecord::Schema.define(version: 20150820135854) do

  create_table "datacenter_racks", force: true do |t|
    t.string   "name",          limit: 64, null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "datacenter_id"
  end

  add_index "datacenter_racks", ["datacenter_id"], name: "index_datacenter_racks_on_datacenter_id"
  add_index "datacenter_racks", ["name"], name: "index_datacenter_racks_on_name", unique: true

  create_table "datacenters", force: true do |t|
    t.string   "name",        limit: 64, null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "datacenters", ["name"], name: "index_datacenters_on_name", unique: true

end
