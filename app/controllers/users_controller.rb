class UsersController < ApplicationController

    def index
        @user_name = current_user.user_name
    end
    def show
        user = User.find(params[:id])
        @user_name = current_user.user_name
        @prototypes = current_user.prototypes
        
    end
end
