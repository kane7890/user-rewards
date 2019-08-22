class PurchasesController < ApplicationController

  def index
    if params[:user_id]
      @user=User.find (params[:user_id])
      @purchases = @user.purchases
    else
      @purchases = Purchase.all
    end

  end


  def new

    @purchase = Purchase.new
    @purchase.user_id=session[:user_id]
    @purchase.store_id=session[:store_id]
    @user=User.find(@purchase.user_id)
    @store=Store.find(@purchase.store_id)

  end

  def create

    @purchase = Purchase.create(purchase_params)
    @user= User.find(@purchase.user_id)
    @store=Store.find(@purchase.store_id)
    @user.points += @store.point_value
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
