class QuestionGroup < ActiveRecord::Base
  has_many :questions
  belongs_to :lsat_section
  # attr_accessible :title, :body
end
