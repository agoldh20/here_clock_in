class SessionsController < ApplicationController

  skip_before_action :authenticate_user!

  def new
    
  end

  def create
    user = User.find_by(user_name: params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully Logged In"
      redirect_to "/userinfo/#{user.id}"
    else
      flash[:warning] = "Invalid Something or Other"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged Out"
    redirect_to '/login'
  end
end
