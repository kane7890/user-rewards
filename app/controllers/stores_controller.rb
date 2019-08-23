class StoresController < ApplicationController
  # index route, pass in @stores
  def index
    @stores=Store.all
  end
  # show route for displaying individual store information
  def show
    # @store=Store.find(params[:id])
    # try to find store based on params
    @store = Store.find(params[:id]) rescue nil

    # only visit store information if there is a user logged in
    if session[:user_id] != nil

      @user = User.find(session[:user_id])

      # @admin = @user.admin
      # @attraction = Attraction.find(params[:id])
      # byebug
        if !@store && params[:id]
          # if store doesn't exist go back to user page
          @user=User.find(params[:user_id])
          flash[:alert]="Store not found."
          redirect_to user_path(@user)
        end
    else
      # if no user is logged in, then redirect the user back to root
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
