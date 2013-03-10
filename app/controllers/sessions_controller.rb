class SessionsController < ApplicationController

  def new
  end

  def destroy
    #session[:user] = nil
    reset_session
    redirect_to root_url
  end

  def create
    @user = User.find_by_name(params[:name])
    if @user.nil?
      flash[:notice] = "Must enter a valid username"
    else
      session[:user_id] = @user.id
    end
    redirect_to root_url
  end

end
