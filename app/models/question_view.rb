=begin
class QuestionViewValidator < ActiveModel::Validator
  def validate(record)
    unless QUESTION_TYPES.include?(record.lesson_type)
      record.errors[:lesson_type] << "Need a section type of logical_reasoning, analytical_reasoning, or reading_comprehension"
    end
  end
end
=end

class QuestionView < ActiveRecord::Base
# put in uniqueness validation?
end

