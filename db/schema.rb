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

ActiveRecord::Schema.define(version: 20140121193554) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", force: true do |t|
    t.string   "name"
    t.string   "last_pat"
    t.string   "last_mat"
    t.string   "tel"
    t.string   "user"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "events", force: true do |t|
    t.string   "type"
    t.string   "location_name"
    t.string   "tel"
    t.string   "mail"
    t.string   "contactp"
    t.string   "contactt"
    t.string   "pavg"
    t.string   "place"
    t.string   "music"
    t.string   "activity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", force: true do |t|
    t.string   "type"
    t.string   "tel"
    t.string   "mail"
    t.string   "contactp"
    t.string   "contactt"
    t.string   "pta"
    t.string   "ptb"
    t.string   "pavg"
    t.string   "stars"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "night_lives", force: true do |t|
    t.string   "type"
    t.string   "tel"
    t.string   "mail"
    t.string   "contactp"
    t.string   "contactt"
    t.string   "pavg"
    t.text     "promo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "type"
    t.string   "tel"
    t.string   "mail"
    t.string   "contactp"
    t.string   "contactt"
    t.string   "pavg"
    t.text     "promo"
    t.string   "serviceType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "monday"
    t.string   "tuesday"
    t.string   "wednesday"
    t.string   "thursday"
    t.string   "friday"
    t.string   "saturday"
    t.string   "sunday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "cat"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoppings", force: true do |t|
    t.string   "type"
    t.string   "tel"
    t.string   "mail"
    t.string   "contactp"
    t.string   "contactt"
    t.text     "products"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tours", force: true do |t|
    t.string   "type"
    t.string   "tel"
    t.string   "mail"
    t.string   "contactp"
    t.string   "contactt"
    t.string   "pavg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transports", force: true do |t|
    t.string   "type"
    t.string   "tel"
    t.string   "cel"
    t.string   "mail"
    t.string   "contactp"
    t.string   "contactt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "user"
    t.string   "cat"
    t.string   "status"
    t.string   "name"
    t.string   "address"
    t.text     "des"
    t.float    "long"
    t.float    "lat"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "venues", ["email"], name: "index_venues_on_email", unique: true
  add_index "venues", ["reset_password_token"], name: "index_venues_on_reset_password_token", unique: true

end
