class UsersController < ApplicationController

def index
    @users=User.all
end

def show
    @user=User.find(params[:id])
end

def new
    @user=User.new
end

def create
    @user=User.new(user_params)

    if @user.save
        flash[:notice] = "Data Received, we will contact you soon."
        redirect_to root_path
    else
        flash[:alert] = "Data was not received, please contact our team."
        render new
    end
end

private

def user_params
    params.require(:user).permit(:email, :name , :last_name, :phone, :country, :package, :question)
end
end
