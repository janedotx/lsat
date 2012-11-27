class LsatTest < ActiveRecord::Base
  has_many :lsat_sections
  attr_accessible :questions

  # attr_accessible :title, :body

  def all_questions
    @all_questions ||= lsat_sections.inject([]) { |memo, obj| obj.questions + memo }
  end
end
