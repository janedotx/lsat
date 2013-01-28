class RenameQuestionsColumn < ActiveRecord::Migration
  def up
    rename_column :lsat_sections, :questions, :questions_ordinal
  end

  def down
    rename_column :lsat_sections, :questions_ordinal, :questions
  end
end
