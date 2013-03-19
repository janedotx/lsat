class LsatTest < ActiveRecord::Base
  has_many :lsat_sections
  attr_accessible :questions

  include SimpleHelpers

  # attr_accessible :title, :body

  # CLASS METHODS

  class << self
    # takes the user object test id, and a params hash
    def grade(user, test_id, student_answers)
      test = LsatTest.find(test_id)
      score = {}

      test.lsat_sections_by_ordinal_array_objects.each do |section|
        section_answers = student_answers[section.id.to_s]
        graded_answers = []
        section.questions_by_ordinal_array_objects.each_with_index do |question, i|
          qv = QuestionView.new
          qv.user_id = user.id
          qv.question_id = question.id
          qv.answer = section_answers[i.to_s]
          qv.save
          user.taken_diagnostic = true
          user.save
          if question.correct_answer.to_s == section_answers[i.to_s]
            graded_answers << 1
          else
            graded_answers << 0
          end
        end
        if score[section.section_type].present?
          score[section.section_type] = score[section.section_type] + graded_answers
        else
          score[section.section_type] = graded_answers
        end
      end
      score
    end
  end

  # INSTANCE METHODS

  def is_prep_test?
    return self.prep_test_number == -1
  end

  # fix so this uses lsat section's question groups instead of questions
  def all_questions
    @all_questions ||= lsat_sections.inject([]) { |memo, obj| obj.questions + memo }
  end

  def lsat_sections_by_ordinal_array
    hash_to_ordered_array(Marshal.load(lsat_sections_by_ordinal))
  end

  def lsat_sections_by_ordinal_array_objects
    @lsat_sections_by_ordinal_array_objects ||= LsatSection.find(hash_to_ordered_array(Marshal.load(lsat_sections_by_ordinal)))
  end
end
