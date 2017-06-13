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

ActiveRecord::Schema.define(version: 20170609235458) do

  create_table "addresses", force: :cascade do |t|
    t.integer "user_id"
    t.string "oneline", limit: 50, null: false
    t.string "twoline", limit: 50
    t.string "zip", limit: 10, null: false
    t.string "country", limit: 2
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "state"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "ecommerces", force: :cascade do |t|
    t.string "sku", limit: 50, null: false
    t.integer "quantity"
    t.string "name", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "orders_products", id: false, force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.index ["order_id"], name: "index_orders_products_on_order_id"
    t.index ["product_id"], name: "index_orders_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.text "sku"
    t.integer "quantity"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "expired", default: false
    t.integer "price_usd"
    t.integer "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
