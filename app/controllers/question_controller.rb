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
# this causes your browser to download it directly
#    send_data open(question.full_question_text_image_file_path, "rb").read, :type => 'image/jpeg'
    send_data open(question.full_question_text_image_file_path, "rb").read, :type => 'image/jpeg', :disposition => 'inline'
  end

end
