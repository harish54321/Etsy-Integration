class SessionsController < ApplicationController
  skip_before_filter :require_login

  def new
  end

  def create
    if login params[:email], params[:password]
      redirect_to root_path, :notice => "You are now logged in!"
    else
      flash[:error] = "Invalid email address or password."
      render :new
    end
  end

  def destroy
    logout
    redirect_to new_session_path, :notice => "You have been logged out."
  end

end
