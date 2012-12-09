class FixQuestionGroups < ActiveRecord::Migration
  def up
    add_column :questions, :lsat_section_id, :integer
    add_column :questions, :prompt, :string
  end

  def down
  end
end
