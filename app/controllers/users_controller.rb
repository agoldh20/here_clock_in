class UsersController < ApplicationController
  def index

  end

  def new

  end

  def create
    # EC: Let's talk Tuesday about how to whitelist parameters in controllers.
    user = User.create(
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation])
    # EC: If you'd like to log in this user when they register, set the session's user id here as well,
    # or else current_user will be nil.
    # Alternatively, if you don't want to log them in immediately, you could redirect them to the
    # login page instead of the user detail page.
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
                 password: params[:password],
                 password_confirmation: params[:password_confirmation])

    redirect_to "/userinfo/#{@user.id}"
  end

  def destroy
    @user = User.find(params[:id])
  end

  # def clock_in
  #   @user = User.find(params[:id])
  # end
end
