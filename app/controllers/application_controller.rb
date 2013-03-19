class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :identify_the_user

  def authorize_user
    if @current_user.blank? || @current_user.id != params[:id]
      redirect_to root_url
    end
  end

  def identify_the_user
    @current_user = User.find_by_id(session[:user_id])
  end

end
