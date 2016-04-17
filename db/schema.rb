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

ActiveRecord::Schema.define(version: 2) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "demons", force: :cascade do |t|
    t.string  "name",        null: false
    t.string  "title",       null: false
    t.integer "division_id"
  end

  create_table "demons_souls", id: false, force: :cascade do |t|
    t.integer "demon_id", null: false
    t.integer "soul_id",  null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name",         null: false
    t.string "circle_level", null: false
  end

  create_table "souls", force: :cascade do |t|
    t.string  "name",        null: false
    t.string  "occupation",  null: false
    t.integer "division_id"
  end

end
