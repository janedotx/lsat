class LessonsCollection < ActiveRecord::Base
  # this will obviously change depending on the environment
  CANONICAL_LESSONS_COLLECTION_ID = 1
  LR_LESSONS_COLLECTION_ID = 1
  RC_LESSONS_COLLECTION_ID = 1
  AR_LESSONS_COLLECTION_ID = 1

  attr_accessible :user_id

  def self.set_for_user(user, scores)
    scores.each_pair do |key, val|
      num_right = val.inject(0) { |ans, sum| ans + sum }
      scores[key] = num_right.to_f/val.size
    end
    if is_baseline?(scores)
      lesson_ids = LessonsCollection.find(CANONICAL_LESSONS_COLLECTION_ID).lesson_ids
    else
      worst_section = scores.min { |a, b| a[1] <=> b[1] }
      case worst_section
      when "logical_reasoning" 
        lesson_ids = LessonsCollection.find(LR_LESSONS_COLLECTION_ID).lesson_ids
      when "reading_comprehension" 
        lesson_ids = LessonsCollection.find(RC_LESSONS_COLLECTION_ID).lesson_ids
      else"reading_comprehension" 
        lesson_ids = LessonsCollection.find(AR_LESSONS_COLLECTION_ID).lesson_ids
      end
    end

    collection = LessonsCollection.new
    collection.user_id = user.id
    collection.lesson_ids = lesson_ids
    collection.save
    user.current_lesson = 0
    user.save
  end

  private

  def self.is_baseline?(scores)
    is_baseline_LR = scores["logical_reasoning"] >= 0.35 && scores["logical_reasoning"] <= 0.45
    is_baseline_RC = scores["reading_comprehension"] >= 0.35 && scores["logical_reasoning"] <= 0.45
    is_baseline_AR = scores["analytical_reasoning"] >= 0.35 && scores["logical_reasoning"] <= 0.45
    is_baseline_LR && is_baseline_RC && is_baseline_AR
  end
end

=begin
user = User.find(3)
scores = {}
scores["logical_reasoning"] = [0,1,0]
scores["reading_comprehension"] =  [0,1,0]
scores["analytical_reasoning"] =  [0,1,0]

LessonsCollection.set_for_user(user, scores)
=end
