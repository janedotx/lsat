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

  # i guess videos will just be urls to wherever they live on vimeo
  def video_ids_unmarshaled
    Marshal.load(video_ids)
  end
end
