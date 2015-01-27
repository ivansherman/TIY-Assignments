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

ActiveRecord::Schema.define(version: 0) do

# Could not dump table "cities" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "states", force: :cascade do |t|
    t.text    "name"
    t.text    "abbr"
    t.text    "capital"
    t.text    "biggest_city"
    t.integer "population"
    t.integer "area"
  end

  create_table "teams", force: :cascade do |t|
    t.text    "name"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
    t.text    "division"
    t.text    "conference"
    t.integer "playoff"
    t.integer "city_id"
  end

end
