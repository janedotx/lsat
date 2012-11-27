class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_filter :require_login, :except => [:index, :signin]

#  protect_from_forgery

  def index
    if user
      redirect_to home_path
    end
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

  def home

  end

  def signin
    if User.authenticate(params[:screen_name], params[:password])
      puts "AUTHENTICATED"
      # save in cookie
      @user = User.find_by_screen_name(params[:screen_name])
      session[:user_id] = @user.id
      redirect_to home_path
    end
  end

  def sign_out
    session[:user_id] = nil
    flash[:notice] = "You signed out!"
    redirect_to root_path
  end

  private

  def require_login
    puts "REQUIRE LOGIN"
    puts user
    redirect_to root_path if user.blank?
  end
end
