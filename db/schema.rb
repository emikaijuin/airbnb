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

ActiveRecord::Schema.define(version: 20180220105005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts_as_bookable_bookings", force: :cascade do |t|
    t.integer  "bookable_id"
    t.string   "bookable_type"
    t.integer  "booker_id"
    t.string   "booker_type"
    t.integer  "amount"
    t.text     "schedule"
    t.datetime "time_start"
    t.datetime "time_end"
    t.datetime "time"
    t.datetime "created_at"
    t.string   "confirmation_number"
  end

  add_index "acts_as_bookable_bookings", ["bookable_type", "bookable_id"], name: "index_acts_as_bookable_bookings_bookable", using: :btree
  add_index "acts_as_bookable_bookings", ["booker_type", "booker_id"], name: "index_acts_as_bookable_bookings_booker", using: :btree

  create_table "amenities", force: :cascade do |t|
    t.boolean "wifi"
    t.boolean "shampoo"
    t.boolean "breakfast"
    t.integer "listing_id"
  end

  create_table "authentications", force: :cascade do |t|
    t.string   "uid"
    t.string   "token"
    t.string   "provider"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "authentications", ["user_id"], name: "index_authentications_on_user_id", using: :btree

  create_table "keyword_listings", force: :cascade do |t|
    t.integer "keyword_id"
    t.integer "listing_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.string "keyword"
  end

  create_table "listings", force: :cascade do |t|
    t.string  "title"
    t.string  "description"
    t.integer "user_id"
    t.string  "dates",       default: [], array: true
    t.text    "schedule"
    t.string  "city"
    t.string  "country"
    t.integer "property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer "property_type_id"
    t.integer "property_subtype_id"
  end

  create_table "property_subtypes", force: :cascade do |t|
    t.string "subtype"
  end

  create_table "property_types", force: :cascade do |t|
    t.string "property"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string  "text"
    t.integer "user_id"
    t.integer "listing_id"
  end

  create_table "safety_amenities", force: :cascade do |t|
    t.boolean "fire_extinguisher"
    t.boolean "carbon_monoxide_detector"
    t.integer "listing_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  add_foreign_key "amenities", "listings"
  add_foreign_key "authentications", "users"
  add_foreign_key "listings", "properties"
  add_foreign_key "listings", "users"
  add_foreign_key "reviews", "listings"
  add_foreign_key "reviews", "users"
  add_foreign_key "safety_amenities", "listings"
end
