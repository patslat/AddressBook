class ContactsController < ApplicationController
  before_filter :authenticate_user

  def index
    render :json => Contact.where(user_id: params[:user_id])
  end

  def create
    contact = Contact.new(params[:contact])
    if contact.save
      render :json => contact
    else
      render :json => contact.errors, status: :unprocessable_entity
    end
  end

  def show
    contact = Contact.find(params[:id])
    render :json => contact
  end

  def update
    update_contact = Contact.find(params[:id])
    if update_contact.update_attributes(params[:contact])
      render :json => update_contact
    else
      render :json => contact.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Contact.find(params[:id]).delete
    render :text => "Contact deleted"
  end

  def search
    Contact.where(params[:search])
  end

end
