class LsatTestController < ApplicationController
  # this is not a test controller
  # this controller lets you take a diagnostic test
  def take_test
    cookies[:test_results] = Marshal.dump({})
  end

  def answer_question
    # @answer = params[:answer]
    # @question = params[:question]
    # if @answer != @question.correct_answer
    #   cookies[:test_results][]
  end

  def grade_test

  end
end
