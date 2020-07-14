class WelcomeController < ApplicationController
  def home
   # binding.pry
    @user = User.find(session[:user_id])

    
  end
end
