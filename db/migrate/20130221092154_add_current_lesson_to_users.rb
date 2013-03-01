class AddCurrentLessonToUsers < ActiveRecord::Migration
  def change
    add_column :users, :current_lesson, :integer
  end
end
