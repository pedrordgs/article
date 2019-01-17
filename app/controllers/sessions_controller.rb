class SessionsController < ApplicationController
  
  def index
    redirect_to '/login'
  end

  def new
    if current_user
      redirect_to '/'
    end
  end

  def create
    @user=User.find_by(username: params[:sessions][:username])
    if @user && @user.authenticate(params[:sessions][:password])
      session[:user_id]=@user.id
      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to '/'
  end
end
