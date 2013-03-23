class PdfsController < ApplicationController
  def show
#    render :text => 'show'
      # make sure filename is a pdf file
    if @user
      send_file "#{Rails.root}/app/assets/pdfs/#{params[:pdf]}", :disposition => 'inline' #{params[:filename]}"
    else
      render :text => 'signin'
    end
=begin
      # this line appeared to be bypassing everything
      #send_file "#{Rails.root}/pdfs/test.pdf"#{params[:filename]}"
      send_file "#{Rails.root}/app/assets/pdfs/#{params[:file]}"
#      send_file "#{Rails.root}/app/assets/pdfs/lsat_diagnostic_placeholder.pdf"
#      send_file "/pdfs/lsat_diagnostic_placeholder.pdf"
    else
      render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
    end
=end
  end

  def test
   render :text => 'ok'
  end
end
