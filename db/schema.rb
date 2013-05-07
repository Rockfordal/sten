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

ActiveRecord::Schema.define(version: 20101210001052) do

  create_table "chakras", force: true do |t|
    t.string   "name",       null: false
    t.integer  "nr",         null: false
    t.text     "desc",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "placering"
    t.string   "element"
    t.string   "kropp"
  end

  create_table "chakras_gemstones", id: false, force: true do |t|
    t.integer "chakra_id"
    t.integer "gemstone_id"
  end

  create_table "colors", force: true do |t|
    t.string   "name",       null: false
    t.text     "desc",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "title",            limit: 50, default: ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type"], name: "index_comments_on_commentable_type"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "energies", force: true do |t|
    t.string "name", null: false
    t.text   "info"
  end

  create_table "energies_gemstones", id: false, force: true do |t|
    t.integer "gemstone_id", null: false
    t.integer "energy_id",   null: false
  end

  create_table "gemstones", force: true do |t|
    t.string   "name",                       null: false
    t.text     "desc",                       null: false
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "energies_count", default: 0
    t.integer  "creator_id"
    t.integer  "updator_id"
  end

  create_table "gemstones_links", id: false, force: true do |t|
    t.integer "link_id",     null: false
    t.integer "gemstone_id", null: false
  end

  create_table "gemstones_properties", id: false, force: true do |t|
    t.integer "gemstone_id"
    t.integer "property_id"
  end

  create_table "images", force: true do |t|
    t.string   "name",               null: false
    t.string   "photo_file_name",    null: false
    t.string   "photo_content_type", null: false
    t.text     "beskrivning"
    t.datetime "photo_updated_at"
    t.integer  "photo_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.string  "title",       null: false
    t.string  "url",         null: false
    t.text    "desc"
    t.integer "linktype_id"
  end

  create_table "linktypes", force: true do |t|
    t.string "name",    null: false
    t.string "iconurl"
  end

  create_table "ownages", force: true do |t|
    t.integer  "gemstone_id"
    t.integer  "user_id"
    t.integer  "prioritet"
    t.string   "typ"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.text     "beskrivning"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",   limit: 128, default: "", null: false
    t.string   "password_salt",                    default: "", null: false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
