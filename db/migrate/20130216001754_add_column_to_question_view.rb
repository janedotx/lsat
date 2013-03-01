class AddColumnToQuestionView < ActiveRecord::Migration
  def change
    add_column :question_views, :answer, :string
  end
end
