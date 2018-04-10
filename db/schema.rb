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

ActiveRecord::Schema.define(version: 20180410004906) do

  create_table "diagnoses", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "heart_rate"
    t.decimal "bp", precision: 5, scale: 2
    t.decimal "bs", precision: 5, scale: 2
    t.text "prescription"
    t.datetime "record_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_diagnoses_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "sex"
    t.string "age"
    t.string "birthyear"
    t.text "case_history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
