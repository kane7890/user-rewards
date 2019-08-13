class UsersController < ApplicationController
  def index

    if session[:user_id]
      @loginname=User.find(session[:user_id]).name
    end
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

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :city, :state)
  end

end
