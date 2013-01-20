class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by_email(params[:session][:password])
        if user && user.authentication(params[:session][:password])
            ## sign the user in and redirect to the user's sho page
        else
            flash.now[:error] = 'Invalid email/password combination'
            render 'new'
        end
    end

    def destroy
    end
end
