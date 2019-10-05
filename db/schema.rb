# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_04_150019) do

  create_table "bills", force: :cascade do |t|
    t.string "bill_id"
    t.string "alternate_bill_id"
    t.string "bill_name"
    t.string "bill_text_url"
    t.string "bill_summary_url"
    t.string "bill_sponsor"
    t.string "branch"
    t.datetime "action_date"
    t.string "action_text"
    t.text "bill_text"
    t.text "bill_summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legislator_counties", force: :cascade do |t|
    t.string "county"
    t.string "district"
    t.string "legislator_key"
    t.string "branch"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legislator_introduced_bills", force: :cascade do |t|
    t.string "legislator_key"
    t.string "legislator_id"
    t.string "branch"
    t.string "bill_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "legislators", force: :cascade do |t|
    t.string "branch"
    t.string "legislator_id"
    t.string "legislator_key"
    t.integer "district"
    t.integer "seat"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "spouse"
    t.string "address"
    t.string "leg_room"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "tel"
    t.string "email"
    t.string "party"
    t.string "senate_terms"
    t.string "house_terms"
    t.string "occupation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
