class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end
# saving the user info to the database through the create method
    def create
        @user = User.new(user_params)
        if @user.dave
            redirect_to root_path, notice: "Created Successfully"
        else
            # rendering the registration views new.html.erb
            render :new
        end
    end

    private

    def user_params
        # these are the only allowed attributes that we set. we don't want a user saying they are admin and fuck our shit up
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end