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

ActiveRecord::Schema.define(version: 20160419040718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.integer  "number_of_players"
    t.string   "day_of_week"
    t.integer  "time"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "histories", force: :cascade do |t|
    t.integer  "player_id"
    t.decimal  "old_rating"
    t.decimal  "new_rating"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "histories", ["player_id"], name: "index_histories_on_player_id", using: :btree
  add_index "histories", ["user_id"], name: "index_histories_on_user_id", using: :btree

  create_table "notes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "player_id"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "notes", ["player_id"], name: "index_notes_on_player_id", using: :btree
  add_index "notes", ["user_id"], name: "index_notes_on_user_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.boolean  "is_goalie"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.string   "facebook_id"
    t.date     "last_active"
    t.text     "app_facebook_Id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "player_id"
    t.decimal  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["player_id"], name: "index_ratings_on_player_id", using: :btree
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.text     "email"
    t.boolean  "is_active"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "provider"
    t.text     "uid"
    t.text     "name"
    t.text     "oauth_token"
    t.datetime "oauth_expires_at"
  end

  add_foreign_key "histories", "players"
  add_foreign_key "histories", "users"
  add_foreign_key "notes", "players"
  add_foreign_key "notes", "users"
end
