
class SessionsController < ApplicationController
  # CLIENT_ID= ENV['GH_BASIC_CLIENT_ID']
  # CLIENT_SECRET=ENV['GH_BASIC_SECRET_ID']

  def new

    @user=User.new
  end

  def create

    @user = User.find_by(name: params[:name])
    # byebug
    if @user == "" or @user == nil
      if auth == nil
        redirect_to new_session_path, alert: "no such user"
      else
        @user = User.find_or_create_by(uid: auth['uid']) do |u|
        # byebug
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.image = auth['info']['image']
        u.points = 0
        u.password = "passw0rd"
        end




      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
      end
    else

      if @user.authenticate(params[:password])
      # binding.pry
      #
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
      else
      
        @user.errors.add(:base, "Incorrect user or password")

        render :new
      end
    end



    # session[:user_id] = @user.id


  end


    # end


  def destroy
    session.clear
    redirect_to new_session_path
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
