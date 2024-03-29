class UsersController < ApplicationController

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)

        if @user
            render :new 
        else
            render :new
        end
    end
    


    def user_params
        params.require(:user).permit(:email, :password)
    end


end