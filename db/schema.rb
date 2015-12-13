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

ActiveRecord::Schema.define(version: 20151121090804) do

  create_table "two_factor_auth_registrations", force: :cascade do |t|
    t.integer  "login_id",                                        null: false
    t.string   "login_type",                                      null: false
    t.binary   "key_handle",                                      null: false
    t.binary   "public_key",                                      null: false
    t.binary   "certificate",                     default: "x''", null: false
    t.integer  "counter",               limit: 5, default: 0,     null: false
    t.datetime "last_authenticated_at",                           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "two_factor_auth_registrations", ["key_handle"], name: "index_two_factor_auth_registrations_on_key_handle"
  add_index "two_factor_auth_registrations", ["last_authenticated_at"], name: "index_two_factor_auth_registrations_on_last_authenticated_at"
  add_index "two_factor_auth_registrations", ["login_type", "login_id"], name: "index_two_factor_auth_registrations_on_login_type_and_login_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
