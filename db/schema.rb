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

ActiveRecord::Schema.define(version: 20180828233538) do

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
    t.boolean "is_valid?"
    t.boolean "is_visitable?"
    t.boolean "is_visited?"
    t.integer "adrstype_id"
    t.text "comments"
    t.text "references"
    t.integer "publisher_id"
    t.integer "macroregion_id"
    t.integer "group_id"
    t.integer "second_language"
    t.integer "card_id"
    t.integer "frequence"
  end

  create_table "addresses_idioms", force: :cascade do |t|
    t.bigint "idiom_id"
    t.bigint "address_id"
    t.index ["address_id"], name: "index_addresses_idioms_on_address_id"
    t.index ["idiom_id"], name: "index_addresses_idioms_on_idiom_id"
  end

  create_table "adrstypes", force: :cascade do |t|
    t.string "typename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignment_addresses", force: :cascade do |t|
    t.integer "address_id"
    t.integer "assignment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.date "date"
  end

  create_table "cards", force: :cascade do |t|
    t.integer "number"
    t.string "name"
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

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "userType"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visits", force: :cascade do |t|
    t.integer "address_id"
    t.integer "publisher_id"
    t.datetime "date"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
