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

ActiveRecord::Schema.define(version: 20170330092539) do

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
    t.string   "status"
    t.text     "message"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

end
