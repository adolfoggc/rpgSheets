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

ActiveRecord::Schema.define(version: 20171018041848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "char3p5_sheets", force: :cascade do |t|
    t.string   "name"
    t.integer  "strength",     default: 8
    t.integer  "dextery",      default: 8
    t.integer  "constitution", default: 8
    t.integer  "intelligence", default: 8
    t.integer  "wisdom",       default: 8
    t.integer  "charisma"
    t.integer  "gold_piece"
    t.integer  "silver_piece"
    t.integer  "cooper_piece"
    t.text     "skills"
    t.text     "feats"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "rpg_systems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
