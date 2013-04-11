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

ActiveRecord::Schema.define(:version => 20130405003705) do

  create_table "courses", :force => true do |t|
    t.binary   "lesson_ids_by_ordinal"
    t.integer  "user_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "lessons", :force => true do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "lsat_test_id"
    t.binary   "video_ids"
    t.string   "lesson_type"
  end

  create_table "lessons_collections", :force => true do |t|
    t.binary   "lesson_ids"
    t.integer  "user_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "current_lesson_index"
  end

  create_table "lessons_videos", :force => true do |t|
    t.integer  "lesson_id"
    t.integer  "video_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lsat_sections", :force => true do |t|
    t.binary   "questions_by_ordinal"
    t.string   "section_type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "lsat_test_id"
  end

  create_table "lsat_tests", :force => true do |t|
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.binary   "lsat_sections_by_ordinal"
    t.integer  "user_id"
    t.boolean  "timed"
    t.integer  "prep_test_number",         :default => -1
    t.string   "pdf",                      :default => ""
    t.string   "filename"
  end

  create_table "question_groups", :force => true do |t|
    t.string   "prompt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "lsat_section_id"
  end

  create_table "question_views", :force => true do |t|
    t.integer "question_id"
    t.integer "user_id"
    t.string  "answer"
  end

  create_table "questions", :force => true do |t|
    t.string   "question_text"
    t.binary   "answers"
    t.integer  "correct_answer"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "question_group_id"
    t.string   "section_type"
    t.integer  "lsat_section_id"
    t.string   "prompt"
    t.string   "question_text_image_file_path"
    t.integer  "video_id"
  end

  create_table "user_vocabulary_words", :force => true do |t|
    t.boolean  "knows_definition"
    t.boolean  "knows_valence"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
    t.integer  "vocabulary_word_id"
  end

  create_table "users", :force => true do |t|
    t.string  "screen_name"
    t.binary  "diagnostic_scores"
    t.string  "salt"
    t.string  "current_test_type"
    t.string  "current_section_type"
    t.string  "password"
    t.string  "password_digest"
    t.string  "email"
    t.boolean "taken_diagnostic"
    t.integer "current_lesson"
  end

  create_table "videos", :force => true do |t|
    t.integer  "question_id"
    t.string   "file_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "vocabulary_words", :force => true do |t|
    t.string   "definition"
    t.string   "part_of_speech"
    t.boolean  "valence"
    t.string   "example_sentence"
    t.string   "example_sentence_1"
    t.integer  "difficulty_level"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "word"
  end

end
