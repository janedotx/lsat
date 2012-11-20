class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.binary :answers
      t.integer :correct_answer
      t.timestamps
    end

    drop_table :question
  end
end
