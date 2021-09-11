class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in? # makes current_user method available to views 

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user # !! turns current_user into a boolean
  end
 
end
