class AddColumnToLsatTests < ActiveRecord::Migration
  def change
    add_column :lsat_tests, :sections_by_ordinal, :binary
  end
end
