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

ActiveRecord::Schema.define(version: 20140508044044) do

  create_table "ads", force: true do |t|
    t.string   "name"
    t.text     "desc"
    t.integer  "baseamount"
    t.integer  "amount"
    t.string   "address"
    t.datetime "startdate"
    t.datetime "enddate"
    t.integer  "type_id"
    t.integer  "district_id"
    t.integer  "duration_id"
    t.integer  "grade_id"
    t.integer  "format_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bids", force: true do |t|
    t.integer  "amount"
    t.integer  "ad_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.string "name"
  end

  create_table "durations", force: true do |t|
    t.string "month"
  end

  create_table "formats", force: true do |t|
    t.string "size"
  end

  create_table "grades", force: true do |t|
    t.string "name"
  end

  create_table "roles", force: true do |t|
    t.string "role"
  end

  create_table "types", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string  "firstname"
    t.string  "lastname"
    t.string  "username"
    t.string  "password_digest"
    t.string  "company"
    t.string  "email"
    t.integer "role_id"
  end

end
