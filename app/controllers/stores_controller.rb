class StoresController < ApplicationController
  def index
    @stores=Store.all
  end

  def show
    # @store=Store.find(params[:id])
    @store = Store.find(params[:id]) rescue nil

    # byebug
    if session[:user_id] != nil

      @user = User.find(session[:user_id])

      # @admin = @user.admin
      # @attraction = Attraction.find(params[:id])
      # byebug
        if !@store && params[:id]
        @user=Artist.find(params[:user_id])
        flash[:alert]="Store not found."
        redirect_to user_stores_path(@user)
        end
    else
      redirect_to root_url
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
