class AddPdfToLsatTest < ActiveRecord::Migration
  def change
    add_column :lsat_tests, :pdf, :string, :default => ""
  end
end
