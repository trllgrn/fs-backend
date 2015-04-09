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

ActiveRecord::Schema.define(version: 20150325232339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billing_addresses", force: true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "payment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "billing_addresses", ["payment_id"], name: "index_billing_addresses_on_payment_id", using: :btree

  create_table "delivery_addresses", force: true do |t|
    t.string "recipient_id"
    t.string "label"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
  end

  create_table "line_items", force: true do |t|
    t.string   "type"
    t.integer  "product_id"
    t.integer  "order_id"
    t.integer  "qty"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree

  create_table "messages", force: true do |t|
    t.integer  "order_id_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "status"
    t.integer  "user_id"
    t.integer  "recipient_id"
    t.integer  "message_id"
    t.integer  "payment_id"
    t.date     "delivery_date"
    t.float    "affiliate_tax"
    t.float    "affiliate_fee"
    t.float    "subtotal"
    t.float    "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_tables", force: true do |t|
  end

  create_table "payments", force: true do |t|
    t.string   "type"
    t.integer  "user_id"
    t.string   "card_type"
    t.string   "card_number"
    t.integer  "card_exp_mo"
    t.integer  "card_exp_yr"
    t.integer  "card_sec_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["user_id"], name: "index_payments_on_user_id", using: :btree

  create_table "recipients", force: true do |t|
    t.string   "name"
    t.integer  "user_id_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "petal_id"
    t.string   "access_token"
    t.string   "provider"
    t.string   "email"
    t.string   "pass"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
