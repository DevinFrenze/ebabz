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

ActiveRecord::Schema.define(version: 20170819034221) do

  create_table "addresses", force: :cascade do |t|
    t.string  "street",   null: false
    t.string  "city",     null: false
    t.string  "state",    null: false
    t.string  "zip",      null: false
    t.integer "event_id", null: false
  end

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "applies", force: :cascade do |t|
    t.date    "start_date", null: false
    t.date    "end_date",   null: false
    t.text    "form"
    t.integer "event_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "publication"
    t.string   "title"
    t.string   "url"
    t.integer  "year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "event_vendors", force: :cascade do |t|
    t.integer "event_id",  null: false
    t.integer "vendor_id", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "year",                       null: false
    t.boolean "active",     default: false, null: false
    t.time    "start_time"
    t.time    "end_time"
    t.date    "date"
    t.string  "venue"
  end

  create_table "events_vendors", id: false, force: :cascade do |t|
    t.integer "event_id",  null: false
    t.integer "vendor_id", null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "question"
    t.string   "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.text "body"
  end

  create_table "safe_spaces", force: :cascade do |t|
    t.text "body"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name", null: false
    t.string "url",  null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.date    "start_date", null: false
    t.date    "end_date",   null: false
    t.text    "form"
    t.integer "event_id"
  end

end
