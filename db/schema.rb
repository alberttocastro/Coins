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

ActiveRecord::Schema.define(version: 20171129162120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "neighborhood"
    t.text "street"
    t.integer "nationality_id"
    t.integer "idiom_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "isvalid"
    t.boolean "isvisitable"
    t.boolean "isvisited"
    t.integer "adrstype_id"
    t.text "comments"
    t.text "references"
    t.integer "publisher_id"
    t.integer "macroregion_id"
    t.integer "group_id"
  end

  create_table "addresses_idioms", force: :cascade do |t|
    t.bigint "idiom_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_addresses_idioms_on_address_id"
    t.index ["idiom_id"], name: "index_addresses_idioms_on_idiom_id"
  end

  create_table "adrstypes", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "number"
    t.integer "conductor"
    t.integer "helper"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idioms", force: :cascade do |t|
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "macroregions", force: :cascade do |t|
    t.string "macroreg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nationalities", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "neighborhood"
    t.string "cellphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "macroregion_id"
    t.integer "group_id"
  end

  create_table "telephones", force: :cascade do |t|
    t.integer "address_id"
    t.string "number"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
