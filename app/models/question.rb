class Question < ActiveRecord::Base
  belongs_to :question_group
  # attr_accessible :title, :body
  
  def unmarshaled_answers
    @unmarshaled_answers ||= Marshal.load(answers)
  end

  def full_question_text_image_file_path
    ENV['RAILS_ROOT'] + question_text_image_file_path
  end

  def image_path
    "/question_text_image/#{id}.jpeg"
  end
end
