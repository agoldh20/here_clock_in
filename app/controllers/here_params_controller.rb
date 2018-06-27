class HereParamsController < ApplicationController
  def new

  end

  def create
    here_param = HereParam.create(here_id: params[:here_id],
                                  password: params[:password],
                                  password_confirmation: params[:password_confirmation])

  end

  def show
    @here_param = HereParam.find(params[:id])
  end

  def edit
    @here_param = HereParam.find(params[:id])
  end

  def update
    @here_param = HereParam.find(params[:id])
    @here_param.update(here_id: params[:here_id],
                       password: params[:password],
                       password_confirmation: params[:password_confirmation])
  end

  def destroy
    @here_param = HereParam.find(params[:id])
    @here_param.destroy
  end
end
