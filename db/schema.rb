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

ActiveRecord::Schema.define(version: 20150701150310) do

  create_table "rooms", force: :cascade do |t|
    t.integer "web_id",    limit: 4
    t.string  "location",  limit: 255
    t.integer "price",     limit: 2
    t.integer "size",      limit: 2
    t.text    "blurb",     limit: 65535
    t.float   "latitude",  limit: 24
    t.float   "longitude", limit: 24
  end

end
