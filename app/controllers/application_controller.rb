class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @current_user ||= Authentication.get_authentication(params[:user_id])
  end


  def authenticate_user
    return false unless current_user == params[:token]
  end

  def logged_in?
    !!current_user
  end

end
