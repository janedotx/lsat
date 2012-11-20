class AddLsatSectionIdToQuestionGroup < ActiveRecord::Migration
  def change
    add_column :question_groups, :lsat_section_id, :integer
  end
end
