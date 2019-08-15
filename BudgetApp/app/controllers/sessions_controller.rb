class SessionsController < ApplicationController
  def new 
  end 

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_index_url, notice: "Logged In!"
    else
      flash.now[:alert] = "Email of Password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out!"
  end
  
end