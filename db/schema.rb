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

ActiveRecord::Schema.define(version: 20140925104121) do

  create_table "emails", force: true do |t|
    t.string   "title",        null: false
    t.integer  "newsletter",   null: false
    t.text     "introduction", null: false
    t.text     "conclusion",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", force: true do |t|
    t.integer  "email_id",        null: false
    t.string   "title",           null: false
    t.string   "url",             null: false
    t.string   "site",            null: false
    t.text     "content",         null: false
    t.string   "section_heading", null: false
    t.integer  "order_value",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
