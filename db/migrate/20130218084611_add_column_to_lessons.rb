class AddColumnToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :lsat_test_id, :integer
  end
end
