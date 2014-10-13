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

ActiveRecord::Schema.define(version: 20141013161133) do

  create_table "appointments", force: true do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "when"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"
  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id"

  create_table "doctors", force: true do |t|
    t.string   "name",                                         null: false
    t.string   "speciality",      default: "General Practice"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "medical_license"
    t.integer  "supervisor_id"
  end

  add_index "doctors", ["name"], name: "index_doctors_on_name"
  add_index "doctors", ["supervisor_id"], name: "index_doctors_on_supervisor_id"

  create_table "notes", force: true do |t|
    t.text     "text"
    t.integer  "noteable_id"
    t.string   "noteable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notes", ["noteable_id", "noteable_type"], name: "index_notes_on_noteable_id_and_noteable_type"

  create_table "patients", force: true do |t|
    t.string   "name",       null: false
    t.string   "gender"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  add_index "patients", ["name"], name: "index_patients_on_name"

end
