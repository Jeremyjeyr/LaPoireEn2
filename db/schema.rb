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

ActiveRecord::Schema.define(version: 20170330214057) do

  create_table "farms", force: :cascade do |t|
    t.string   "address"
    t.string   "title"
    t.string   "phone"
    t.string   "background_image"
    t.text     "description"
    t.text     "open_hours"
    t.text     "orders_days"
    t.text     "delivery_days"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "orders", force: :cascade do |t|
    t.float    "total"
    t.integer  "status"
    t.text     "message"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "farm_id"
    t.string   "content"
  end

  create_table "products", force: :cascade do |t|
    t.text     "name"
    t.text     "image"
    t.float    "price"
    t.string   "unit"
    t.text     "available_in"
    t.integer  "avalaible_stock"
    t.integer  "real_stock"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "farm_id"
    t.integer  "quantity"
  end

  create_table "products_orders", id: false, force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.index ["order_id"], name: "index_products_orders_on_order_id"
    t.index ["product_id"], name: "index_products_orders_on_product_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
