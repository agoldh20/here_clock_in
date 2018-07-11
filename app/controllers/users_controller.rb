class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:create, :new]
  
  def index
    
  end

  def new

  end

  def create
    user = User.create(
                        first_name: user_params[:first_name],
                        last_name: user_params[:last_name],
                        user_name: user_params[:user_name],
                        password: user_params[:password],
                        password_confirmation: user_params[:password_confirmation])
    session[:user_id] = user.id
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
    @user.update(first_name: user_params[:first_name],
                 last_name: user_params[:last_name],
                 user_name: user_params[:user_name],
                 password: user_params[:password],
                 password_confirmation: user_params[:password_confirmation])

    redirect_to "/userinfo/#{@user.id}"            
  end

  def destroy
    @user = User.find(params[:id])
  end
  
  private

  def user_params
    params.require(:user).permit(
                                :first_name,
                                :last_name,
                                :user_name,
                                :password,
                                :password_confirmation)
  end
end
