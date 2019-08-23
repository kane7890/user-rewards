class UsersController < ApplicationController
  # index:  for displaying all of the users
  def index
    @users=User.all
  end

  # show route for displaying one user based on user_id
  def show

    # byebug
    # check to see if the user is logged in, and then see if the user logged in is the user trying
    # to see the user information being displayed
    if !session[:user_id] || session[:user_id] != params[:id].to_i

      redirect_to root_url
    end
    # get the @user object by User.find from the :id from params
    @user=User.find(params[:id])
    # get a new Genre object for use in Genre selection page
    @genre=Genre.new
    # if @user.points exceed 20, user gets a coupon
    if @user.points > 20
      @couponflag = true
    else
      @couponflag = false
    end
  end

  # create new User object for filling in for user data
  def new
    @user=User.new
  end

  # receive  user information from new.html.erb
  def create

      # try to create a new user based on data from new user form, use user_params private method to get parameters
      @user= User.new(user_params)
      # if user is valid
      if @user.valid?

    #  if @user == "" or @user.id == nil
        # if user is valid, set points to 0, save @user
        @user.points = 0
        @user.save
        # set session[:user_id] to @user.id to log in the user
        session[:user_id] = @user.id
        # redirect to the show page for that user
        redirect_to user_path(@user)
    else
      # if the user is not valid, go back and re-render the new page
        render :new
    end
  end


  def edit

  end


  private
  # private method for requiring the :user key and permitting other sub-keys for params hash
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :city, :state)
  end

end
