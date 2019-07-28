class Api::V1::UsersController < ApplicationController
    # skip_before_action :authorize, only: [:create]

    def create
        user = User.create( user_params )
        if user.valid?
            # debugger
            render json: { user: UserSerializer.new(user)}, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :not_accepted
        end
    end

    def index
        users = User.all
        render json: users
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end
end


# , token: issue_token(user_id: user.id) 
#  add this to line 8, render json if valid