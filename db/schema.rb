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

ActiveRecord::Schema.define(version: 20151019164841) do

  create_table "ideabooks", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "title"
    t.text     "description"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "google"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
  end

  add_index "ideabooks", ["email"], name: "index_ideabooks_on_email", unique: true
  add_index "ideabooks", ["reset_password_token"], name: "index_ideabooks_on_reset_password_token", unique: true

  create_table "ideas", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "ideabook_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "idea_thumbnail_file_name"
    t.string   "idea_thumbnail_content_type"
    t.integer  "idea_thumbnail_file_size"
    t.datetime "idea_thumbnail_updated_at"
  end

  add_index "ideas", ["ideabook_id"], name: "index_ideas_on_ideabook_id"

end
