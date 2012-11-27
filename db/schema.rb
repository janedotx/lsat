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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121127035003) do

  create_table "lsat_sections", :force => true do |t|
    t.binary   "questions"
    t.string   "section_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "lsat_test_id"
  end

  create_table "lsat_tests", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "question_groups", :force => true do |t|
    t.string   "prompt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "lsat_section_id"
  end

  create_table "questions", :force => true do |t|
    t.string   "question_text"
    t.binary   "answers"
    t.integer  "correct_answer"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "question_group_id"
    t.string   "section_type"
  end

  create_table "users", :force => true do |t|
    t.string "screen_name"
    t.binary "diagnostic_scores"
    t.string "salt"
    t.string "current_test_type"
    t.string "current_section_type"
    t.string "password"
    t.string "password_digest"
    t.string "email"
  end

end
