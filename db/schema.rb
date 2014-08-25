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

ActiveRecord::Schema.define(version: 20140825082017) do

  create_table "points", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "topic_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_emails", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "creator_id"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["code"], name: "index_topics_on_code", unique: true, using: :btree
  add_index "topics", ["creator_id"], name: "index_topics_on_creator_id", using: :btree

  create_table "topics_participants", force: true do |t|
    t.integer "topic_id"
    t.integer "user_id"
  end

  add_index "topics_participants", ["topic_id", "user_id"], name: "index_topics_participants_on_topic_id_and_user_id", unique: true, using: :btree
  add_index "topics_participants", ["topic_id"], name: "index_topics_participants_on_topic_id", using: :btree
  add_index "topics_participants", ["user_id"], name: "index_topics_participants_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "nickname"
    t.string   "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["identifier"], name: "index_users_on_identifier", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.integer  "user_id"
    t.integer  "point_id"
    t.integer  "kind",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["point_id"], name: "index_votes_on_point_id", using: :btree
  add_index "votes", ["user_id", "point_id"], name: "index_votes_on_user_id_and_point_id", unique: true, using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree

end
