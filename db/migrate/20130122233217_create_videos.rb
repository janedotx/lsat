class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :question_id
      t.string :file_name

      t.timestamps
    end
  end
end
