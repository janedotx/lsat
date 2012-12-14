class QuestionController < ApplicationController
  # this is not a test controller
  # this controller lets you take a diagnostic test

  def question_text_image
    question = Question.find(params[:id].to_i)
=begin
    respond_to do |format|
      format.jpg { render :text => open(question.full_question_text_image_file_path, "rb").read, :status => 200, :content_type => 'image/jpeg' }
    end
=end
    send_data open(question.full_question_text_image_file_path, "rb").read, :type => 'jpeg'
  end

end
