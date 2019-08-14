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
      @user= User.create(user_params)
      #binding.pry
      if @user == "" or @user.id == nil
        redirect_to new_user_path, alert: "passwords don't match"
      else
    # binding.pry
      session[:user_id] = @user.id
  # username=params[:name]

  # else
  #   session[:name]=username
  #   binding.pry
    redirect_to user_path(@user.id)
    end


  end
  def edit

  end
  def update

      if session[:user_id] != nil # byebug
        @user = User.find(params[:id])
          @store=Store.find(params[:store_id])

          purch=Purchase.create(user_id: @user.id, store_id: @store.id)

          @message=purch.makebuy
          #  byebug
          @user=User.find(params[:id])
        #byebug
        render :show
      else
        redirect_to root_url
      end
    end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :city, :state)
  end

end
