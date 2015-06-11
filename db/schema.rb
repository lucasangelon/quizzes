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

ActiveRecord::Schema.define(version: 0) do

  create_table "cluster", force: true do |t|
    t.string "name", limit: 45, null: false
  end

  create_table "cluster_unit", force: true do |t|
    t.integer "unit_id",    null: false
    t.integer "cluster_id", null: false
  end

  add_index "cluster_unit", ["cluster_id"], name: "fk_cluster_id_idx", using: :btree
  add_index "cluster_unit", ["unit_id"], name: "fk_unit_id_idx", using: :btree

  create_table "course", force: true do |t|
    t.string "name", limit: 45, null: false
  end

  create_table "course_cluster", force: true do |t|
    t.integer "cluster_id", null: false
    t.integer "course_id",  null: false
  end

  add_index "course_cluster", ["cluster_id"], name: "fk_cluster_id_idx", using: :btree
  add_index "course_cluster", ["course_id"], name: "fk_course_id_idx", using: :btree

  create_table "course_user", force: true do |t|
    t.integer "user_id",   null: false
    t.integer "course_id", null: false
  end

  add_index "course_user", ["course_id"], name: "course_id_idx", using: :btree
  add_index "course_user", ["user_id"], name: "user_id_idx", using: :btree

  create_table "faq", force: true do |t|
    t.text "email",    limit: 2147483647
    t.text "question", limit: 2147483647
    t.text "answer",   limit: 2147483647
  end

  create_table "language", force: true do |t|
    t.string "name", null: false
  end

  create_table "question", force: true do |t|
    t.string  "content",        null: false
    t.integer "quiz_id",        null: false
    t.integer "user_id",        null: false
    t.integer "type_id",        null: false
    t.integer "language_id",    null: false
    t.integer "specific_id"
    t.string  "correct_answer", null: false
  end

  add_index "question", ["language_id"], name: "fk_language_id_idx", using: :btree
  add_index "question", ["quiz_id"], name: "fk_quiz_id_idx", using: :btree
  add_index "question", ["specific_id"], name: "specific_id_idx", using: :btree
  add_index "question", ["type_id"], name: "fk_type_id_idx", using: :btree
  add_index "question", ["user_id"], name: "fk_user_id_idx", using: :btree

  create_table "question_extra", force: true do |t|
    t.string  "content",     null: false
    t.integer "question_id", null: false
  end

  add_index "question_extra", ["question_id"], name: "fk_question_id_idx", using: :btree

  create_table "quiz", force: true do |t|
    t.string   "title",       null: false
    t.datetime "due_date",    null: false
    t.integer  "user_id",     null: false
    t.integer  "unit_id",     null: false
    t.integer  "language_id", null: false
    t.integer  "specific_id"
  end

  add_index "quiz", ["language_id"], name: "fk_language_id_idx", using: :btree
  add_index "quiz", ["specific_id"], name: "fk_specific_id_idx", using: :btree
  add_index "quiz", ["unit_id"], name: "fk_unit_id_idx", using: :btree
  add_index "quiz", ["user_id"], name: "fk_user_id_idx", using: :btree

  create_table "role", force: true do |t|
    t.string "name", limit: 20, null: false
  end

  add_index "role", ["name"], name: "name", unique: true, using: :btree

  create_table "specific", force: true do |t|
    t.string "name", limit: 45, null: false
  end

  create_table "type", force: true do |t|
    t.string "name", null: false
  end

  create_table "unit", force: true do |t|
    t.string "name", limit: 45, null: false
  end

  create_table "user", force: true do |t|
    t.string  "first_name", limit: 30, null: false
    t.string  "last_name",  limit: 40, null: false
    t.string  "email",      limit: 50, null: false
    t.string  "password",   limit: 50, null: false
    t.integer "role_id",               null: false
  end

  add_index "user", ["email"], name: "email", unique: true, using: :btree
  add_index "user", ["role_id"], name: "role_id", using: :btree

  create_table "user_quiz", force: true do |t|
    t.integer  "user_id", null: false
    t.integer  "quiz_id", null: false
    t.datetime "date",    null: false
  end

  add_index "user_quiz", ["quiz_id"], name: "fk_quiz_id_idx", using: :btree
  add_index "user_quiz", ["user_id"], name: "fk_user_id_idx", using: :btree

  create_table "user_quiz_answer", force: true do |t|
    t.integer "user_quiz_id",      null: false
    t.integer "question_id",       null: false
    t.integer "question_extra_id"
    t.string  "answer_text"
  end

  add_index "user_quiz_answer", ["question_extra_id"], name: "fk_question_extra_id_idx", using: :btree
  add_index "user_quiz_answer", ["question_id"], name: "fk_question_id_idx", using: :btree
  add_index "user_quiz_answer", ["user_quiz_id"], name: "fk_user_quiz_id_idx", using: :btree

  create_table "user_unit", force: true do |t|
    t.integer "user_id", null: false
    t.integer "unit_id", null: false
  end

  add_index "user_unit", ["unit_id"], name: "fk_unit_id_idx", using: :btree
  add_index "user_unit", ["user_id"], name: "fk_user_id_idx", using: :btree

end
