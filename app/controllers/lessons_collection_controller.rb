class LessonsCollectionController < ApplicationController
  def show
    @lessons_collection = @user.lessons_collection
  end

  def questions_of_the_day
    @lesson = Lesson.find(@user.lessons_collection.current_lesson_id)
    @questions = LsatTest.find(@lesson.lsat_test_id)
  end

  def grade_questions_of_the_day
    @scores = LsatTest.grade(@user, params["test_id"], params)
    @percentages = {}
    @scores.each_pair do |key, val|
      num_right = val.inject(0) { |ans, sum| ans + sum }
      @percentages[key] = num_right.to_f/val.size
    end
    @passed = @percentages.each_value.to_a.map { |x| x > 0.5 }.include? false

    # TODO if we failed to pass we need to Do Something about it
    
  end
end
