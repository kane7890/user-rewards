class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def show
    @user=User.find(params[:id])
  end

  def new
    @user=User.new
  end

  def create
  #    binding.pry
      @user= User.new(user_params)
      if @user.valid?
      #binding.pry
    #  if @user == "" or @user.id == nil

      session[:user_id] = @user.id
      @user.points = 0
      @user.save
          redirect_to user_path(@user)
    else
        render :new
    # binding.pry

  # username=params[:name]

  # else
  #   session[:name]=username
  #   binding.pry

    end


  end
  def edit

  end
  def update

      if session[:user_id] != nil # byebug
        @user = User.find(params[:id])
          @store=Store.find(params[:store_id])
          @item=params[:item]
          #  purch=Purchase.create(user_id: @user.id, store_id: @store.id, item: @item)
          #
          #  @message=purch.makebuy
          # # #  byebug
                  #byebug
        session[:store_id]=@store.id
        redirect_to new_purchase_path
      else
        redirect_to root_url
      end
    end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :city, :state)
  end

end
