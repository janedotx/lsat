class AddDiagnosedBitToUser < ActiveRecord::Migration
  def change
    add_column :users, :taken_diagnostic, :boolean
  end
end
