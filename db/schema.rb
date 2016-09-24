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

ActiveRecord::Schema.define(version: 20160924154417) do

  create_table "dogs", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.date     "born_on"
    t.string   "chip_number"
    t.string   "license_number"
    t.boolean  "is_hdb_approved"
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
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.boolean  "is_featured"
  end

end
