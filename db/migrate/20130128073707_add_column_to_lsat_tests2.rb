class AddColumnToLsatTests2 < ActiveRecord::Migration
  def up
    rename_column :lsat_tests, :sections_by_ordinal, :lsat_sections_by_ordinal
  end

  def down
    rename_column :lsat_tests, :lsat_sections_by_ordinal, :sections_by_ordinal
  end
end
