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

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
