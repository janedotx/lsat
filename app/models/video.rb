class Video < ActiveRecord::Base
  has_and_belongs_to_many :lessons
  belongs_to :questions
  attr_accessible :file_name
end
