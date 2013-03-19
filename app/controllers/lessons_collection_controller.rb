class LessonsCollectionController < ApplicationController
  def show
    @lessons_collection = @user.lessons_collection
  end

  def questions_of_the_day
    @lesson = Lesson.find(@user.lessons_collection.current_lesson_id)
    @questions = LsatTest.find(@lesson.lsat_test_id)
  end

  def grade_lesson
    LsatTest.grade(@user, params["test_id"], params)
  end
end
