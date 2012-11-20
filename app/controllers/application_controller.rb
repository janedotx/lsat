class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  end

  # remember to put in password confirmation later
  def create_user
    puts params.inspect
    # let's pretend no validations problems
    u = User.new
    u.screen_name = params[:screen_name]
    u.password = params[:password]
    u.email = params[:email]
    u.save
  end

  def signin
  end
end
