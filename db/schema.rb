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

ActiveRecord::Schema.define(version: 20151112161352) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clues", force: :cascade do |t|
    t.text     "clue"
    t.integer  "outline_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "count_column"
  end

  add_index "clues", ["outline_id"], name: "index_clues_on_outline_id", using: :btree
  add_index "clues", ["user_id"], name: "index_clues_on_user_id", using: :btree

  create_table "contributions", force: :cascade do |t|
    t.text     "submission"
    t.integer  "outline_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "count_column"
  end

  add_index "contributions", ["outline_id"], name: "index_contributions_on_outline_id", using: :btree
  add_index "contributions", ["user_id"], name: "index_contributions_on_user_id", using: :btree

  create_table "outlines", force: :cascade do |t|
    t.string   "subjects"
    t.string   "settings"
    t.string   "themes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.text     "contribution"
    t.text     "clues"
    t.integer  "user_id"
    t.integer  "outline_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "stories", ["outline_id"], name: "index_stories_on_outline_id", using: :btree
  add_index "stories", ["user_id"], name: "index_stories_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "clues", "outlines"
  add_foreign_key "clues", "users"
  add_foreign_key "contributions", "outlines"
  add_foreign_key "contributions", "users"
  add_foreign_key "stories", "outlines"
  add_foreign_key "stories", "users"
end
