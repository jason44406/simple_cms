class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def confirm_logged_in
    # unless is like 'if not'  So here we say if there is not a :user_id present....
    unless session[:user_id]
    # do this stuff
      flash[:notice] = "Please log in."
      redirect_to(access_login_path)
      #r edirect_to prevents the requested action from running.
    end
  end
  
end
