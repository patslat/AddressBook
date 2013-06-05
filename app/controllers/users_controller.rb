class UsersController < ApplicationController

  before_filter :authenticate_user, only: :update, only: :destroy

  def index
    render :json => User.all
  end

  def show
    render :json => User.find(params[:id])
  end

  def create
    user = User.new(params[:user])
    if user.save
      render :json => user
    else
      render :json => user.errors, status: :unprocessable_entity
    end
  end


  def update
    update_user = User.find(params[:id])
    if update_user.update_attributes(params[:user])
      render :json => update_user
    else
      render :json => user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    User.find(params[:id]).destroy
    render :text => "User destroyed"
  end
end
