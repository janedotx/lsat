class AddPdfToLsatTests < ActiveRecord::Migration
  def change
    add_column :lsat_tests, :filename, :string
  end
end
