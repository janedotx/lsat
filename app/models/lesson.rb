class Lesson < ActiveRecord::Base
  has_and_belongs_to_many :videos
  # attr_accessible :title, :body
end
