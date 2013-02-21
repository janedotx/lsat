class LessonValidator < ActiveModel::Validator
  def validate(record)
    unless QUESTION_TYPES.include?(record.lesson_type)
      record.errors[:lesson_type] << "Need a section type of logical_reasoning, analytical_reasoning, or reading_comprehension"
    end
  end
end

class Lesson < ActiveRecord::Base
  has_and_belongs_to_many :videos
  # attr_accessible :title, :body
end
