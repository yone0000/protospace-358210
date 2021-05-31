class UsersController < ApplicationController

    def index
        @user_name = current_user.user_name
        
    end


    def show
     
      user = User.find(params[:id])
      
    @prototypes = user.prototypes

        @user_name = user.user_name
        @user_profile = user.user_profile
        @user_occupation = user.user_occupation
        @user_position = user.user_position
        # @prototypes = user.prototypes
        
    end

    def update
        if current_user.update(user_params)
          redirect_to root_path
        else
          render :edit
        end
      end
end
