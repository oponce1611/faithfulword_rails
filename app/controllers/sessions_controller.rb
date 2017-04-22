class SessionsController < ApplicationController
  layout 'login'
  def new
    
  end
  
  def create
    user = User.find_by(:user => params[:session][:user].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to :back
  end
  
end