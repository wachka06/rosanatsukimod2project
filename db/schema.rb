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

ActiveRecord::Schema.define(version: 2018_08_21_204855) do

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "story_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.boolean "native_language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "beginning"
    t.string "twist"
    t.string "conclusion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "development"
  end

  create_table "story_writers", force: :cascade do |t|
    t.integer "writer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "story_id"
  end

  create_table "writer_languages", force: :cascade do |t|
    t.integer "writer_id"
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writers", force: :cascade do |t|
    t.string "pen_name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
