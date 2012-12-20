class LsatTestController < ApplicationController
  # this is not a test controller
  # this controller lets you take a diagnostic test
  DIAGNOSTIC_TEST_ID = 2

  def show_diagnostic_test
    @test = LsatTest.find(2)
    @questions = @test.all_questions
  end

  def show_diagnostic_scantron
    @test = LsatTest.find(2)
    @questions = @test.all_questions
  end

  def grade_diagnostic_test
    @test = LsatTest.find(2)
    @questions = @test.all_questions
    @score = {"logical_reasoning" => [0,0], "reading_comprehension" => [0,0], "analytical_reasoning" => [0,0] }

    @questions.each_with_index do |question, index|
      student_answer = params[index.to_s].to_i
      if question.correct_answer == student_answer
        @score[question.section_type][0] += 1
      else
        @score[question.section_type][1] += 1
      end
    end
  end

  def take_timed_test

  end

  def take_test
      puts "LOGGED IN?"
      puts session[:user_id]
    if params[:test_id].to_i == -1
      puts "first question"
      test = LsatTest.find(:first)
      cookies[:test_id] = test.id
      cookies[:test_results] = Marshal.dump([])
      cookies[:current_test_question] = 0
      questions = test.all_questions
      cookies[:total_num_questions] = questions.size
      puts "user id overwritten?"
      puts session[:user_id]
      @question = Question.find(questions[0])
      @section = @question.question_group.lsat_section
    else
      puts "next question"
      puts session[:user_id]
      test = LsatTest.find(cookies[:test_id])
      @question = Question.find(test.all_questions[cookies[:current_test_question].to_i])
    end
  end

  def grade_question
    answer = params[:answer].to_i
    @question = Question.find(params[:question_id].to_i)
    test_results = Marshal.load(cookies[:test_results])
    test_results << [@question.id, (@question.correct_answer == params[:answer].to_i)]
    cookies[:test_results] = Marshal.dump(test_results)
    cookies[:current_test_question] = cookies[:current_test_question].to_i + 1
    if cookies[:current_test_question] == cookies[:total_num_questions].to_i
      redirect_to finish_test_path
    else
      redirect_to take_test_path
    end
  end

  def finish_test
    @test_results = Marshal.load(cookies[:test_results])
    @correct_questions = @test_results.select { |x| x[1] }
  end

  def grade_test

  end
end
