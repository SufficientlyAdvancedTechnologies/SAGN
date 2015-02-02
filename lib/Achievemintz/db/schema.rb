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

ActiveRecord::Schema.define(version: 20150202041644) do

  create_table "achievements", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.integer  "game_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "achievements", ["game_id"], name: "index_achievements_on_game_id"

  create_table "achievements_unlocks", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "achievement_id"
    t.integer  "progression"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "achievements_unlocks", ["achievement_id"], name: "index_achievements_unlocks_on_achievement_id"
  add_index "achievements_unlocks", ["player_id"], name: "index_achievements_unlocks_on_player_id"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "badges", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "meta"
    t.integer  "status"
    t.integer  "achievement_unlock_id"
    t.integer  "player_id"
    t.float    "multiplier"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "badges", ["achievement_unlock_id"], name: "index_badges_on_achievement_unlock_id"
  add_index "badges", ["player_id"], name: "index_badges_on_player_id"

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "status"
    t.integer  "developer_id"
    t.text     "meta"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "games", ["developer_id"], name: "index_games_on_developer_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
