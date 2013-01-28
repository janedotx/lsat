class RenameAgain < ActiveRecord::Migration
  def up
    rename_column :lsat_sections, :questions_ordinal, :questions_by_ordinal
  end

  def down
    rename_column :lsat_sections, :questions_by_ordinal, :questions_ordinal
  end
end
