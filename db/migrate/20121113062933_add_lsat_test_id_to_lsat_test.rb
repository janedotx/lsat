class AddLsatTestIdToLsatTest < ActiveRecord::Migration
  def change
    add_column :lsat_sections, :lsat_test_id, :integer
  end
end
