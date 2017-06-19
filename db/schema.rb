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

ActiveRecord::Schema.define(version: 20170619030858) do

  create_table "communities", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "community_type", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "demands", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.text     "description",  limit: 65535
    t.integer  "status",       limit: 4
    t.integer  "demand_type",  limit: 4
    t.datetime "start_date"
    t.integer  "user_id",      limit: 4
    t.integer  "service_id",   limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "community_id", limit: 4
  end

  add_index "demands", ["community_id"], name: "index_demands_on_community_id", using: :btree
  add_index "demands", ["service_id"], name: "index_demands_on_service_id", using: :btree
  add_index "demands", ["user_id"], name: "index_demands_on_user_id", using: :btree

  create_table "licitations", force: :cascade do |t|
    t.integer  "mount",       limit: 4
    t.text     "description", limit: 65535
    t.integer  "status",      limit: 4
    t.integer  "votes",       limit: 4
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "user_id",     limit: 4
    t.integer  "demand_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "licitations", ["demand_id"], name: "index_licitations_on_demand_id", using: :btree
  add_index "licitations", ["user_id"], name: "index_licitations_on_user_id", using: :btree

  create_table "public_demands", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "demand_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "public_demands", ["demand_id"], name: "index_public_demands_on_demand_id", using: :btree
  add_index "public_demands", ["user_id"], name: "index_public_demands_on_user_id", using: :btree

  create_table "publications", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "service_areas", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.text     "description",  limit: 65535
    t.integer  "specialty_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "services", ["specialty_id"], name: "index_services_on_specialty_id", using: :btree

  create_table "specialties", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.integer  "category",               limit: 4
    t.string   "address",                limit: 255
    t.text     "description",            limit: 65535
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "specialty_id",           limit: 4
    t.integer  "community_id",           limit: 4
  end

  add_index "users", ["community_id"], name: "index_users_on_community_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["specialty_id"], name: "index_users_on_specialty_id", using: :btree

  add_foreign_key "demands", "communities"
  add_foreign_key "demands", "services"
  add_foreign_key "demands", "users"
  add_foreign_key "licitations", "demands"
  add_foreign_key "licitations", "users"
  add_foreign_key "public_demands", "demands"
  add_foreign_key "public_demands", "users"
  add_foreign_key "services", "specialties"
  add_foreign_key "users", "communities"
  add_foreign_key "users", "specialties"
end
