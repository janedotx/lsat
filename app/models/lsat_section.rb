class LsatSection < ActiveRecord::Base
  belongs_to :lsat_test
  has_many :question_groups
  has_many :questions
  # attr_accessible :title, :body

=begin
  def questions
    # save a durable version so we don't recalculate this
    questions = question_groups.inject([]) { |memo, obj| obj.questions + memo }
  end
=end
end
