class Video < ActiveRecord::Base
  has_and_belongs_to_many :lessons
  attr_accessible :file_name, :question_id
end
