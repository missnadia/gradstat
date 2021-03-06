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

ActiveRecord::Schema.define(version: 2018_08_06_160308) do

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "course_id"
  end

  create_table "course_students", force: :cascade do |t|
    t.integer "student_id_id"
    t.integer "course_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id_id"], name: "index_course_students_on_course_id_id"
    t.index ["student_id_id"], name: "index_course_students_on_student_id_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "time_spent"
    t.boolean "completed"
    t.date "date"
    t.integer "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["student_id"], name: "index_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "provider"
    t.string "uid"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
  end

end
