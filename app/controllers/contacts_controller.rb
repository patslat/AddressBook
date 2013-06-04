class ContactsController < ApplicationController

  def index
    render :json => Contact.where(user_id: params[:user_id])
  end




end
