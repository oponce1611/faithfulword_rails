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

ActiveRecord::Schema.define(version: 20170331231509) do

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.date   "date"
  end

  create_table "languages", force: :cascade do |t|
    t.string   "tongue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "translations", force: :cascade do |t|
    t.string   "title"
    t.string   "video_id"
    t.text     "body"
    t.date     "published"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "language_id"
    t.index ["language_id"], name: "index_translations_on_language_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
