class ApplicationController < ActionController::Base
  include ApplicationHelper

  before_filter :require_login, :except => [:index, :signin]
  before_filter :set_user

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
    if @user.taken_diagnostic
      redirect_to :lesson_of_the_day
    end
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

  def signout
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

  def set_user
    return nil if session[:user_id].blank?
    @user ||= User.find(session[:user_id].to_i)
  end
end
