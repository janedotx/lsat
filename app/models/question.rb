class Question < ActiveRecord::Base
  belongs_to :question_group
  # attr_accessible :title, :body
end
