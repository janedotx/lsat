class VideosController < ApplicationController
  def send_video
    #send_data(File.open("/Users/jian/lsat/movies/test.mov"), :type => "video/quicktime", :disposition => "inline")
    #send_file("/Users/jian/lsat/movies/gasohol_take_2.mov", :type => 'video/quicktime', :disposition => 'inline')
    send_file("/Users/jian/lsat/movies/Gasohol.m4v", :type => 'video/quicktime', :disposition => 'inline')
  end

  def send_mp3
    #send_data(File.open("/Users/jian/lsat/movies/test.mov"), :type => "video/quicktime", :disposition => "inline")
    send_file("/Users/jian/lsat/movies/test.mp3", :type => 'audio/mpeg', :disposition => 'inline')
  end

end
