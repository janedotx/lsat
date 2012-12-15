class AddQuestionViewModel < ActiveRecord::Migration
  def up
    create_table :question_views do |t|
      t.integer :question_id
      t.integer :user_id
    end
  end

  def down
  end
end
