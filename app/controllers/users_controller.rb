class UsersController < ApplicationController
    skip_before_action :require_login, only: [:create, :index]
    
    def index
        users = User.all
        render json: users, status: :ok
    end

    def show
       @user = User.find(params[:id])
           if @user
              render json: {
              user: @user
            }
        else
            render json: {
              status: 500,
              errors: ['user not found']
            }
        end
    end
      
    def create
        user = User.create(user_params)
        if user.valid?
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user: UserSerializer.new(user), jwt: token}, status: :created
        else
            render json: {errors: user.errors.full_messages}, status: :not_acceptable
        end
    end
    
    private
      
     def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
