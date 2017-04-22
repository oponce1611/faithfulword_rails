class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_user, :admin?, 
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def admin?
    !!current_user
  end
  
  def require_user
    if !admin
      redirect_to root_path
    end
  end
end
