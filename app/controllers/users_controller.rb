class UsersController < ApplicationController
  def new
    if current_user
     redirect_to '/'
    else
      @user=User.new
    end
  end

  def index
    redirect_to '/signup'
  end

  def create 
    @user=User.new(user_params)
    if @user.save
      session[:user_id]=@user.id
      redirect_to '/'
    else
      render :new
    end
  end

  private 
  def user_params
    params.require(:user).permit(:username,:password)
  end
end
