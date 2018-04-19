class UsersController < ApplicationController
  def index
    
  end

  def new

  end

  def create
    user = User.create(
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        user_name: params[:user_name],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation])

    redirect_to "/userinfo/#{user.id}"            
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user.update(first_name: params[:first_name],
                 last_name: params[:last_name],
                 here_id: params[:here_id],
                 here_password: params[:here_password])

    redirect_to "/userinfo/#{@user.id}"            
  end

  def destroy
    @user = User.find(params[:id])
  end
  
  def addhereinfo
    @user = User.find(params[:id])
  end

  def updatehereinfo
    @user = User.find(params[:id])
    @user.update(here_id: params[:here_id],
                 here_password: params[:here_password])

    redirect_to "/userinfo/#{@user.id}"
  end
  # def clock_in
  #   @user = User.find(params[:id])
  # end
end
