class AddSectionTypeToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :section_type, :string
  end
end
