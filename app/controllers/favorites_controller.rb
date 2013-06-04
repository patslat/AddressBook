class FavoritesController < ApplicationController
  before_filter :authenticate_user
  def index
    render :json => User.find(params[:user_id]).favorite_contacts
  end

  def create
    favorite = Favorite.new(params[:favorite])
    if favorite.save
      render :json => favorite
    else
      render :json => favorite.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Favorite.find(params[:id]).delete
    render :text => "Favorite deleted"
  end


end
