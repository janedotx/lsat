class LsatTest < ActiveRecord::Base
  has_many :lsat_sections
  attr_accessible :questions

  include SimpleHelpers

  # attr_accessible :title, :body

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
