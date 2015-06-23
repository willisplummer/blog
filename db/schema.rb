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

ActiveRecord::Schema.define(version: 20150531155644) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "slug"
    t.string   "author_url"
    t.string   "first_page_title"
    t.text     "first_page"
    t.text     "bio"
    t.integer  "page_count"
    t.integer  "header_width"
    t.integer  "body_width"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pages", force: :cascade do |t|
    t.integer  "page_number"
    t.string   "slug"
    t.string   "page_title"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pages", ["article_id"], name: "index_pages_on_article_id"

end
