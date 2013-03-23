class RenameColumnInLessonsCollections < ActiveRecord::Migration
  def up
    rename_column :lessons_collections, :current_lesson_id, :current_lesson_index
  end

  def down
    rename_column :lessons_collections, :current_lesson_index, :current_lesson_id
  end
end
