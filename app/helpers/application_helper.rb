module ApplicationHelper
  def user
    if session[:user_id]
      User.find_by_id(session[:user_id].to_i) 
    else
      nil
    end
  end
end
