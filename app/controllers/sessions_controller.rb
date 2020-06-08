class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == "" || params[:name].nil?
      redirect_to login_path, alert: "Name field can not be blank."
    else
      session[:name] = params[:name]
      redirect_to root_path
    end 
  end

  def destroy
    session.delete :name 
    redirect_to login_path
  end 
end
