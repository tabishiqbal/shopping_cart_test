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

ActiveRecord::Schema.define(version: 20141113020120) do

  create_table "issuances", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "tool_id"
    t.integer  "issuance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["issuance_id"], name: "index_line_items_on_issuance_id"
  add_index "line_items", ["tool_id"], name: "index_line_items_on_tool_id"

  create_table "tools", force: true do |t|
    t.string   "tool_barcode"
    t.text     "description"
    t.integer  "quantity",     default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
