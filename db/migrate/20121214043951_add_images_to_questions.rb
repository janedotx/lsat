class AddImagesToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :question_text_image_file_path, :string
  end
end
