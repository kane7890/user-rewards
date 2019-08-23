class PurchasesController < ApplicationController
  # index for displaying all purchases -- either all purchases or all purchases for a user
  def index
    if params[:user_id]
      # if the user is routed as nested from /users/:id/purchases, find @user and that user's purchases

      @user=User.find (params[:user_id])
      # set @purchases to @user purchases (from ActiveRecord)
      @purchases = @user.purchases
    else
      # if the user is routed from purchases, just set @purchases instance to array from Purchase.all
      @purchases = Purchase.all
    end

  end

  # prepare new purchase object before sending to new.html.erb
  def new
    # create new purchase object
    @purchase = Purchase.new
    # set user_id and store_id for the Purchase object
    @purchase.user_id=session[:user_id]
  #  byebug
    @purchase.store_id=params[:store_id]
    # find @user and @store instances that correspond to user_id and store_id
    @user=User.find(@purchase.user_id)
    @store=Store.find(@purchase.store_id)

  end

  def create
    # byebug
    # create a Purchase instance based on parameters from route
    @purchase = Purchase.create(purchase_params)
    # set user and @store for the Purchase object
    @user= User.find(@purchase.user_id)
    @store=Store.find(@purchase.store_id)
    # add the point value from the store to the @user
    if !params[:couponflag]
      @user.points = @user.points + @store.point_value
    else
      @user.points -= 20
    end

    # save / persist the @user with the new point total
    @user.save
    #byebug
    redirect_to user_path(@user)
  end

  def show
  end

  private

  def purchase_params
    params.require(:purchase).permit(:user_id, :store_id, :item)
  end
end
