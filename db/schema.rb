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

ActiveRecord::Schema.define(version: 20160410184917) do

  create_table "agreements", force: :cascade do |t|
    t.string   "horticulturist"
    t.text     "policy"
    t.text     "flowers"
    t.string   "from"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "agreements", ["from"], name: "index_agreements_on_from"
  add_index "agreements", ["horticulturist"], name: "index_agreements_on_horticulturist"

  create_table "dashboards", force: :cascade do |t|
    t.string   "name"
    t.text     "qualification"
    t.text     "contact"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "user_id"
  end

  create_table "designs", force: :cascade do |t|
    t.integer  "area"
    t.integer  "cost"
    t.integer  "pond"
    t.text     "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "designs", ["area"], name: "index_designs_on_area"
  add_index "designs", ["cost"], name: "index_designs_on_cost"

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price", precision: 12, scale: 3
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id"

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal",   precision: 12, scale: 3
    t.decimal  "total",      precision: 12, scale: 3
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "products", force: :cascade do |t|
    t.text     "url"
    t.string   "title"
    t.text     "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
    t.integer  "quantity"
  end

  create_table "requests", force: :cascade do |t|
    t.text     "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "service"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "horticulturist"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["horticulturist"], name: "index_users_on_horticulturist"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
