class CreateLsatTests < ActiveRecord::Migration
  def change
    create_table :lsat_tests do |t|
      t.timestamps
    end

    create_table :lsat_sections do |t|
      t.binary :questions
      t.string :section_type
      t.timestamps
    end

    create_table :question_groups do |t|
      t.string :prompt
      t.timestamps
    end

    create_table :question do |t|
      t.string :question_text
      t.binary :answers
      t.integer :correct_answer
    end
  end
end
