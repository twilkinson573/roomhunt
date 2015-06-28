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

ActiveRecord::Schema.define(version: 20150628125812) do

  create_table "authors", force: :cascade do |t|
    t.string   "surname",       limit: 255
    t.string   "initials",      limit: 255
    t.string   "interjections", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors_publications", force: :cascade do |t|
    t.integer "publication_id", limit: 4
    t.integer "author_id",      limit: 4
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations_publications", force: :cascade do |t|
    t.integer "publication_id",  limit: 4
    t.integer "organization_id", limit: 4
  end

  create_table "publications", force: :cascade do |t|
    t.string   "title",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "publication_date"
    t.string   "keywords",              limit: 255
    t.boolean  "publicly_accessible",   limit: 1
    t.text     "summary",               limit: 65535
    t.text     "comments",              limit: 65535
    t.string   "document_file_name",    limit: 255
    t.string   "document_content_type", limit: 255
    t.integer  "document_file_size",    limit: 4
    t.datetime "document_updated_at"
  end

  add_index "publications", ["id"], name: "index_publications_on_id", using: :btree

  create_table "rooms", force: :cascade do |t|
    t.string  "location", limit: 255
    t.integer "price",    limit: 2
    t.integer "size",     limit: 2
    t.text    "blurb",    limit: 65535
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",   null: false
    t.string   "encrypted_password",     limit: 255, default: "",   null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  limit: 1,   default: true
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
