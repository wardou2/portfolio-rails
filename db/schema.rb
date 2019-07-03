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

ActiveRecord::Schema.define(version: 2019_05_30_203131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "githubs", force: :cascade do |t|
    t.string "repo_url_front"
    t.string "repo_url_back"
    t.string "demo_url"
    t.string "name"
    t.string "img_url"
    t.string "summary"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contribution", default: [], array: true
    t.integer "order_id"
  end

  create_table "honors", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.string "month"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "order_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "order_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "company"
    t.string "title"
    t.string "summary"
    t.string "start_month"
    t.integer "start_year"
    t.string "end_month"
    t.integer "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "responsibilities", default: [], array: true
    t.string "skills_used", default: [], array: true
    t.string "img_url"
    t.integer "user_id"
    t.integer "order_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "order_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_url"
    t.integer "user_id"
    t.integer "order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bio"
    t.string "intro"
    t.string "img_url"
    t.string "github_username"
    t.string "title"
    t.string "username"
    t.string "password_digest"
    t.string "color_theme"
  end

end
