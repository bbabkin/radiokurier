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

ActiveRecord::Schema.define(version: 20151008172807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "username",        limit: 50
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audio_entries", force: :cascade do |t|
    t.string   "permalink"
    t.text     "description"
    t.datetime "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "title"
    t.string   "image"
    t.string   "permaogg"
  end

  create_table "banners", force: :cascade do |t|
    t.string   "image1"
    t.string   "image2"
    t.integer  "position"
    t.integer  "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "permalink"
  end

  create_table "page_section_contents", force: :cascade do |t|
    t.integer  "content_id"
    t.string   "page_section_key"
    t.string   "locale"
    t.text     "content"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "performers", force: :cascade do |t|
    t.integer  "role"
    t.string   "title"
    t.text     "description"
    t.string   "photo"
    t.string   "permalink"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "position"
    t.string   "permaogg"
  end

end
