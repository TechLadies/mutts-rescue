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

ActiveRecord::Schema.define(version: 20161116125634) do

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.date     "born_on"
    t.string   "chip_number"
    t.string   "license_number"
    t.string   "is_hdb_approved",            default: "maybe"
    t.string   "color_markings"
    t.string   "adoption_status"
    t.text     "background_story"
    t.boolean  "is_good_with_other_dogs"
    t.boolean  "is_good_with_kids"
    t.string   "energy_level"
    t.text     "notes_temperament"
    t.boolean  "is_vaccinated"
    t.boolean  "is_sterilized"
    t.text     "notes_health"
    t.text     "quote"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.boolean  "is_featured",                default: false
    t.string   "image_url"
    t.integer  "location_id"
    t.boolean  "is_good_for_elderly_owners"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "location_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "bank_acct"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "imglink"
    t.string   "caption"
    t.boolean  "profile"
    t.integer  "dog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_photos_on_dog_id"
  end

  create_table "sponsorships", force: :cascade do |t|
    t.integer  "person_id"
    t.date     "sponsor_until_date"
    t.decimal  "amount",             precision: 8, scale: 2
    t.integer  "dog_id"
    t.text     "notes"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "sponsorship_type"
  end

  create_table "updates", force: :cascade do |t|
    t.integer  "dog_id"
    t.date     "date"
    t.string   "image_url"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
