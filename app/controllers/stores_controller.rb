class StoresController < ApplicationController
  def index
    @stores=Store.all
  end

  def show
    # @store=Store.find(params[:id])
    @store = Store.find(params[:id]) rescue nil


    if session[:user_id] != nil
      @user = User.find(session[:user_id])
      end
      # @admin = @user.admin
      # @attraction = Attraction.find(params[:id])

        if !@store && params[:user_id]
        @user=Artist.find(params[:user_id])
        flash[:alert]="Store not found."
        redirect_to user_stores_path(@user)
      end
  end

  def new

  end

  def create
  end

  def edit

  end

  def update

  end

  private
  def store_params
    params.require(:store).permit(:name, :city, :state)
  end
end
