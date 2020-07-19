class SessionsController < ApplicationController
    
    def create
        @user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])
    
        if @user && @user.authenticate(params[:password])
            render jason: {
                status: :created,
                logged_in: true,
                user: @user
            }
        else
            render json: { status: 401 }
        end
    end
   
end