class Question < ActiveRecord::Base
  belongs_to :question_group
  # attr_accessible :title, :body
  
  def unmarshaled_answers
    @unmarshaled_answers ||= Marshal.load(answers)
  end
end
