class ApplicationController < ActionController::Base
  protect_from_forgery
  def token
    @token ||= Authentication.get_token(params[:user_id])
  end

  def authenticate_user
    if params[:token]
      token == params[:token]
    else
      token
    end
  end

end
