class CreateLessonsCollection < ActiveRecord::Migration
  def up
    create_table :lessons_collections do |t|
      t.binary :lesson_ids
      t.integer :user_id
      t.timestamps
    end
  end

  def down
  end
end
