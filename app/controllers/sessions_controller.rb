class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secrets_path
    end
  end

  def destroy
    reset_session unless session[:name].nil?
    redirect_to login_path
  end
end