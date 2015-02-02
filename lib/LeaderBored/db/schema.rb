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

ActiveRecord::Schema.define(version: 20150202005641) do

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.text     "description"
    t.integer  "developer_id"
    t.integer  "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "games", ["developer_id"], name: "index_games_on_developer_id"

  create_table "leaderboards", force: :cascade do |t|
    t.integer  "game_id"
    t.string   "name"
    t.text     "description"
    t.integer  "status"
    t.text     "meta"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "leaderboards", ["game_id"], name: "index_leaderboards_on_game_id"

  create_table "leaderboards_scores", force: :cascade do |t|
    t.integer  "leaderboard_id"
    t.integer  "player_id"
    t.integer  "value"
    t.string   "display_value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "leaderboards_scores", ["leaderboard_id"], name: "index_leaderboards_scores_on_leaderboard_id"
  add_index "leaderboards_scores", ["player_id"], name: "index_leaderboards_scores_on_player_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
