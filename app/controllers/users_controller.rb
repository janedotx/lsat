class UsersController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :show_signup_form]

  def show_signup_form
    # this has no purpose but to show the signup form
#    @screen_name = params[:screen_name]
  end

  def new
    errors = []

    if params[:password] != params[:password_confirmation]
      errors << "Passwords do not match"
    end

    if params[:password].size < 8
      errors << "Password needs to be at least 8 characters"
    end

    if !(params[:password] =~ /\d/)
      errors << "Password needs at least one digit"
    end

    if User.find_by_screen_name(params[:screen_name])
      errors << "Screen name already taken"
    end

    if User.find_by_email(params[:email_address])
      errors << "Email address already taken"
    end

    if errors.present?
      redirect_to :action => "show_signup_form", :screen_name => params[:screen_name], :email_address => params[:email_address], :errors => errors
    else
      u = User.new
      u.screen_name = params[:screen_name]
      u.password = params[:password]
      u.email = params[:email_address]
      u.save
      session[:user_id] = u.id
      redirect_to home_path
    end
  end
end
