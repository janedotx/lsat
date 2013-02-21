class LsatSectionValidator < ActiveModel::Validator
  def validate(record)
    unless QUESTION_TYPES.include?(record.section_type)
      record.errors[:section_type] << "Need a section type of logical_reasoning, analytical_reasoning, or reading_comprehension"
    end
  end
end

class LsatSection < ActiveRecord::Base
  include ActiveModel::Validations
  include SimpleHelpers
  validates_with LsatSectionValidator

  ANALYTICAL_REASONING_INSTRUCTIONS = "Directions: Each group of questions in this section is based on a set of conditions. In answering some of the questions, it may be
  useful to draw a rough diagram. Choose the response that most accurately and completely answers each question and blacken
  the corresponding space on your answer sheet."

  LOGICAL_REASONING_INSTRUCTIONS = "Directions: The questions in this section are based on the reasoning contained in brief statements or passages. For some
  questions, more than one of the choices could conceivably answer the question. However, you are to choose the best answer; that
  is, the response that most accurately and completely answers the question. You should not make assumptions that are by
  commonsense standards implausible, superfluous, or incompatible with the passage. After you have chosen the best answer,
  blacken the corresponding space on your answer sheet."

  READING_COMPREHENSION_INSTRUCTIONS = "Directions: Each set of questions in this section is based on a single passage or a pair of passages. The questions are to be
  answered on the basis of what is stated or implied in the passage or pair of passages. For some of the questions, more than one
  of the choices could conceivably answer the question. However, you are to choose the best answer; that is, the response that
  most accurately and completely answers the question, and blacken the corresponding space on your answer sheet."
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

  def presentable_section_type
    section_type.split(/_/).map { |x| x.capitalize }.join(" ")
  end

  def instructions
    case section_type
    when "logical_reasoning"
      LOGICAL_REASONING_INSTRUCTIONS
    when "analytical_reasoning"
      ANALYTICAL_REASONING_INSTRUCTIONS
    else
      READING_COMPREHENSION_INSTRUCTIONS
    end
  end

  # we aren't really going to be using the "has_many :questions" association.
  def questions_by_ordinal_array
    hash_to_ordered_array(Marshal.load(questions_by_ordinal))
  end

  def questions_by_ordinal_array_objects
    @questions_by_ordinal_array_objects ||= Question.find(hash_to_ordered_array(Marshal.load(questions_by_ordinal)))
  end
end
