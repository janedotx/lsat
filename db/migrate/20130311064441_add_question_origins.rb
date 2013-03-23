class AddQuestionOrigins < ActiveRecord::Migration
  def up
    add_column :lsat_tests, :prep_test_number, :integer, :default => -1
  end

  def down
    remove_column :lsat_tests, :prep_test_number
  end
end
