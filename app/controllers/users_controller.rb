class UsersController < ApplicationController

    def new

    end

    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        if @user.authenticate(params[:password_confirmation])
            session[:password] = params[:password]
        else
            redirect_to new_user_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

end