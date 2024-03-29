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

ActiveRecord::Schema.define(version: 20140511080353) do

  create_table "ideas", force: true do |t|
    t.string   "title",      null: false
    t.text     "why"
    t.text     "copy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ideas", ["title"], name: "index_ideas_on_title"

  create_table "links", force: true do |t|
    t.string   "title"
    t.string   "url",        null: false
    t.integer  "idea_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["idea_id"], name: "index_links_on_idea_id"
  add_index "links", ["title"], name: "index_links_on_title"
  add_index "links", ["url"], name: "index_links_on_url"

end
