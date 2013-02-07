class AddLessonsByOrdinalToUsers < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.binary :lesson_ids_by_ordinal
      t.integer :user_id

      t.timestamps
    end
  end
end
