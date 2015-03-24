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

ActiveRecord::Schema.define(version: 20150317183421) do

  create_table "attendances", force: :cascade do |t|
    t.integer  "student_crossover_id",     limit: 4
    t.integer  "supervision_crossover_id", limit: 4
    t.boolean  "present",                  limit: 1
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "classroom_types", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "abbreviation", limit: 255
    t.string   "description",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "classrooms", force: :cascade do |t|
    t.string   "number",            limit: 255
    t.integer  "classroom_type_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "comment",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "course_supervision_crossovers", force: :cascade do |t|
    t.integer  "course_crossover2_id",     limit: 4
    t.integer  "supervision_crossover_id", limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.integer  "specialization_id",   limit: 4
    t.integer  "supervisor_exams_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "exam_periods", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "specializations", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "abbreviation", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "student_class_crossovers", force: :cascade do |t|
    t.integer  "student_crossover_id", limit: 4
    t.integer  "course_crossover1_id", limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "supervisions", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.integer  "supervisor_exams_id", limit: 4
    t.integer  "classroom_id",        limit: 4
    t.integer  "exam_period_id",      limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "supervisors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "initials",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",               limit: 255, default: "", null: false
    t.string   "encrypted_password",  limit: 255, default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",  limit: 255
    t.string   "last_sign_in_ip",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
