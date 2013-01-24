class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|

      t.timestamps
    end

    create_table :lessons_videos do |t|
      t.integer :lesson_id
      t.integer :video_id
      t.timestamps
    end
  end
end
