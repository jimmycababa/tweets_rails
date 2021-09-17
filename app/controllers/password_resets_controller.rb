class PasswordResetsController < ApplicationController
    def new 
    end

    def create
        @user = User.find_by(:email)

        if @user.present?
            #send email. go to the password mailer, send the reset email, including the parameters so we know which user to send the email to. the we call the deliver later method to send it through a background job bc sending an email request can happen immediately. the user will see a response very quickly.
            PasswordMailer.with(user: @user).reset.deliver_now
        end
        redirect_to root_path, notice: "If an account with that email was found, we have sent a link to reset your password"
    end
end