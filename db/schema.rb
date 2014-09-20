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

ActiveRecord::Schema.define(version: 20140919231733) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "ousers", id: false, force: true do |t|
    t.string  "username",   limit: 50,                  null: false
    t.string  "name",       limit: 50,                  null: false
    t.string  "email",      limit: 50,                  null: false
    t.integer "high_score",            default: 0,      null: false
    t.string  "password",   limit: 20, default: "pass"
    t.integer "fb_ac",                 default: 0
  end

  create_table "questions", force: true do |t|
    t.string   "name"
    t.string   "answer"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email",      limit: 50, null: false
    t.string   "password"
    t.integer  "highest1"
    t.integer  "highest2"
    t.integer  "highest3"
    t.integer  "facebook"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
    t.string   "image"
  end

  add_index "users", ["email"], name: "email", unique: true, using: :btree

end
