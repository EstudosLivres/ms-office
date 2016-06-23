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

ActiveRecord::Schema.define(version: 20160623013916) do

  create_table "columns", force: :cascade do |t|
    t.string   "name",        limit: 255, null: false
    t.integer  "report_id",   limit: 4
    t.integer  "document_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "columns", ["document_id"], name: "index_columns_on_document_id", using: :btree
  add_index "columns", ["report_id"], name: "index_columns_on_report_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "filters", force: :cascade do |t|
    t.integer  "report_id",   limit: 4
    t.integer  "register_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "filters", ["register_id"], name: "index_filters_on_register_id", using: :btree
  add_index "filters", ["report_id"], name: "index_filters_on_report_id", using: :btree

  create_table "registers", force: :cascade do |t|
    t.string   "value",      limit: 255, null: false
    t.integer  "column_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "registers", ["column_id"], name: "index_registers_on_column_id", using: :btree

  create_table "reports", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "columns", "documents"
  add_foreign_key "columns", "reports"
  add_foreign_key "filters", "registers"
  add_foreign_key "filters", "reports"
  add_foreign_key "registers", "columns"
end
