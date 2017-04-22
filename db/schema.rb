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

ActiveRecord::Schema.define(version: 20170422171648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.date   "date"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "tongue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
    t.string   "flag"
    t.index ["slug"], name: "index_languages_on_slug", unique: true, using: :btree
  end

  create_table "sermons", force: :cascade do |t|
    t.string   "title"
    t.string   "preacher"
    t.datetime "datetime"
    t.text     "mp3"
    t.text     "ytube_id"
    t.text     "scloud"
    t.boolean  "fire_hard",  default: false
    t.string   "location"
    t.text     "transcript"
    t.string   "format"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "slug"
    t.integer  "dl_count",   default: 0
    t.index ["slug"], name: "index_sermons_on_slug", unique: true, using: :btree
    t.index ["title"], name: "index_sermons_on_title", using: :btree
  end

  create_table "translations", force: :cascade do |t|
    t.string   "title"
    t.string   "video_id"
    t.text     "body"
    t.date     "published"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "language_id"
    t.string   "slug"
    t.index ["language_id"], name: "index_translations_on_language_id", using: :btree
    t.index ["slug"], name: "index_translations_on_slug", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "user"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
