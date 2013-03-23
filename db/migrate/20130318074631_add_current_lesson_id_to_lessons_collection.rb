class AddCurrentLessonIdToLessonsCollection < ActiveRecord::Migration
  def change
    add_column :lessons_collections, :current_lesson_id, :integer
  end
end
