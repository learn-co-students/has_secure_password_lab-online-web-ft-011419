class SessionsController < ApplicationController
  def new
  end

  def create
   
     @user = User.find_by(name: params[:user][:name])
     #binding.pry
   return head(:forbidden) unless @user.authenticate(params[:user][:password])
   
    session[:user_id] = @user.id
   # binding.pry
   redirect_to  welcome_path
  end

  def destroy
  end
   private
  def user_params
    params.require(:user).permit(:name,:password)
  end
end
