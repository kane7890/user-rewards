
class SessionsController < ApplicationController

  def new
  end

  def create

    @user = User.find_by(name: params[:name])
  #  binding.pry
    if @user == "" or @user == nil
      redirect_to new_session_path, alert: "no such user"
    else
      # binding.pry
    #  return head(:forbidden) unless

      if @user.authenticate(params[:password])
      # binding.pry
      #
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
      else
        
      end
    end
    # end
  end


  def destroy
    session.clear
    redirect_to new_session_path
  end
end
